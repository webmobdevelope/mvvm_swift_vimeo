//
//  EndpointOption.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import Alamofire

protocol EndpointOption {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders { get }
    var url: URL { get }
    var encoding: ParameterEncoding { get }
}
