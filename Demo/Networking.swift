import Foundation
import Networking

struct Networking: NetworkingType {
    let provider: OnlineProvider<GitHubAPI> = OnlineProvider()
}
