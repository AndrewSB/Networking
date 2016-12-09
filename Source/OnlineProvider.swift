import Foundation
import RxSwift
import RxSwiftExt
import Moya
import RxMoya

open class OnlineProvider<Target>: RxMoyaProvider<Target> where Target: TargetType {
    fileprivate let online: Observable<Bool>

    init(endpointClosure: @escaping EndpointClosure = MoyaProvider.defaultEndpointMapping,
         requestClosure: @escaping RequestClosure = MoyaProvider.defaultRequestMapping,
         stubClosure: @escaping StubClosure = MoyaProvider.neverStub,
         manager: Manager = RxMoyaProvider<Target>.defaultAlamofireManager(),
         plugins: [PluginType] = [],
         trackInflights: Bool = false,
         online: Observable<Bool>) {

        self.online = online
        super.init(
            endpointClosure: endpointClosure,
            requestClosure: requestClosure,
            stubClosure: stubClosure,
            manager: manager,
            plugins: plugins,
            trackInflights: trackInflights
        )
    }

    override open func request(_ token: Target) -> Observable<Moya.Response> {
        let actualRequest = super.request(token)
        return online
            .ignore(false)                  // Wait until we're online
            .take(1)                        // Take 1 to make sure we only invoke the API once.
            .flatMap { _ in actualRequest } // Turn the online state into a network request

    }

}
