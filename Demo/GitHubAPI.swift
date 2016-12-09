import Foundation
import Moya

enum GitHubAPI {
    case zen // it's all you need
}

extension GitHubAPI: TargetType {
    var baseURL: URL { return URL(string: "https://api.github.com")! }

    var path: String {
        switch self {
        case .zen: return "/zen"
        }
    }

    var method: Moya.Method {
        switch self {
        case .zen: return .get
        }
    }

    var parameters: [String : Any]? {
        switch self {
        case .zen: return nil
        }
    }

    var task: Task {
        return .request
    }

    var validate: Bool {
        switch self {
        case .zen: return true
        }
    }

    var sampleData: Data {
        switch self {
        case .zen: return "Half measures are as bad as nothing at all.".data(using: String.Encoding.utf8)!
        }
    }
}
