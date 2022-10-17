//
//  EndpointRoute.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import Foundation
import Alamofire
public enum EndpointRoute: Equatable {
    case getVideoList
    case getAccessToken
}


extension EndpointRoute: EndpointOption {
    public static let DEVICE_TYPE="IOS"
    public var baseURL: String {
        switch self {
        /// Auth Server
        case .getVideoList,.getAccessToken :
            return "https://api.vimeo.com/"
        default:
            return "https://baseurl/"
        }
    }
    
    
    
    public var headers: HTTPHeaders {
        switch self {
        case .getVideoList:
            return ["Content-Type": "application/json"]
        case .getAccessToken:
            return ["Content-Type": "application/json","Authorization":"Basic ZjkxMzJkYTk4ZmI0YTk3MWU1YzY0ZmE4Y2ExZGNiNGM3NTdiODU0NDpZWERqcGpMRENwdG5BVkkwVmcyWUpBZGcrbEs2Q0JJZSsrSmc2a1N3MU5WQlVTMzZHNVhWYkg1RkF2dUVTZEp5V25JTEVuWUZjazVZOFdiSEU3V2N6YnFJZU9KSU9lSGVydFpVMnM1MzBrcml3QnlMNTZnZ3kyUk1YTnl0d1djVQ=="
                    ,"Accept":"application/vnd.vimeo.*+json;version=3.4"]
        default:
            return ["Content-Type": "application/json",
                    "auth":"" ]
//            return ["Content-Type": "application/json","Authorization": "Bearer \(StorageUtils.getToken() ?? "")",]
        }
        
    }
    public var params: Parameters {
        switch self {
        case .getVideoList:
            return ["access_token":Env.AccessToken!]
        case .getAccessToken:
            return ["grant_type": "client_credentials","scope": "public"]
        default:
            return [:]
        }
    }
    
    
    public var method: HTTPMethod {
        switch self {
        case .getVideoList :
            return .get
        default:
            return .post
        }
    }
    
    
    
    public var url: URL {
        switch self {
        default:
            return URL(string: self.baseURL + self.path)!
        }
    }
    public var strurl: String {
        switch self {
        default:
            return self.baseURL + self.path
        }
    }


    public var encoding: ParameterEncoding {
        switch self {
        case .getVideoList :
            return URLEncoding.queryString
        default:
            return JSONEncoding.default
        }
    }



    public var path: String {
        switch self {
        case .getVideoList:
            return "videos"
        case .getAccessToken:
            return "oauth/authorize/client/"
        }
    }
}
