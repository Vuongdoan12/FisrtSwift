//

import Foundation
import Moya

public enum HealthCareTarget {
    case getArticles
    case getBlogs
}

extension HealthCareTarget: TargetType {
    public var baseURL: URL {
        return URL(string: "https://www.healthcare.gov/api")!
    }

    public var path: String {
        switch self {
        case .getArticles:
            return "/articles.json"
        case .getBlogs:
            return "/blog.json"
        }
    
    }

    public var method: Moya.Method {
        return .get
    }

    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        return .requestParameters(parameters: [:],
                                  encoding: URLEncoding.default)
    }

    public var headers: [String : String]? {
        return [:]
    }

}
