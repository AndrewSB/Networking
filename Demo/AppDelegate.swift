import UIKit
import Networking
import RxSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let disposeBag = DisposeBag()

    var window: UIWindow?

    let networking = Networking()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        networking.request(.zen)
            .subscribe(onNext: { response in
                print("response recieved from zen!")
                print(String(data: response.data, encoding: .utf8)!)
            })
            .addDisposableTo(disposeBag)

        return true
    }


}

