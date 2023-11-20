//
//  CommentManager.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

class CommentManager {
    
    static let shared = CommentManager()
        
    func getCommentItems(postID: Int, complete: @escaping(([Comment]?, String?)->())) {
        let url = "\(NetworkHelper.shared.baseURL)comments?/postId=\(postID)"
        NetworkManager.shared.request(type: [Comment].self,
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
