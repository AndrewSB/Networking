import Foundation
import RxSwift
import Moya
import RxMoya

public protocol NetworkingType {
    associatedtype T: Moya.TargetType
    var provider: OnlineProvider<T> { get }

    func request(_ token: T) -> Observable<Moya.Response>
}

public extension NetworkingType {
    public func request(_ token: T) -> Observable<Moya.Response> {
        let actualRequest = self.provider.request(token)

        // TODO: add something you can flatMap into that ensures auth (if required)
        return actualRequest
    }
}
