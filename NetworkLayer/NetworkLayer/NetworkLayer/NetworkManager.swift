//
//  NetworkManager.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()

    func request<T: Codable>(type: T.Type, url: NetworkHelper.Api, method: HTTPMethods, completion: @escaping((Result<T, ErrorTypes>) -> Void)) {
        let session = URLSession.shared
        if let url = URL(string: url.endPoint) {
            var request = URLRequest(url: url)
            request.httpMethod = method.rawValue
            let dataTask = session.dataTask(with: request) { data, response, error in
                if let _ = error {
                    completion(.failure(.generalError))
                } else if let data = data {
                    self.handleResponse(data: data) { response in
                        completion(response)
                    }
                } else {
                    completion(.failure(.invalidURL))
                }
            }
            dataTask.resume()
        }
    }
    
    fileprivate func handleResponse<T: Codable>(data: Data, completion: @escaping((Result<T, ErrorTypes>) -> ())) {
        do {
            let result = try JSONDecoder().decode(T.self, from: data)
            completion(.success(result))
        } catch {
            completion(.failure(.invalidData))
        }
    }
}
