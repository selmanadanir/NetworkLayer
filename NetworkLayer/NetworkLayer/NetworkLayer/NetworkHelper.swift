//
//  NetworkHelper.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
}

enum ErrorTypes: String, Error {
    case invalidData = "Invalid Data"
    case invalidURL = "Invalid URL"
    case generalError = "An Error Happend"
}

class NetworkHelper {
    static let shared = NetworkHelper()
    let baseURL = "https://jsonplaceholder.typicode.com/"
    
    enum Api {
        case post
        
        var endPoint: String {
            switch self {
            case .post:
                return NetworkHelper.shared.baseURL + "posts"
            }
        }
    }
}
