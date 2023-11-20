//
//  PostManager.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

class PostManager {
    
    static let shared = PostManager()
        
    func getPostItems(complete: @escaping(([Post]?, String?)->())) {
        let url = "\(NetworkHelper.shared.baseURL)posts"
        NetworkManager.shared.request(type: [Post].self,
                                      url: url,
                                      method: .get) { response in
            switch response {
            case .success(let items):
                complete(items, nil)
            case .failure(let error):
                complete(nil, error.rawValue)
            }
        }
    }
}
