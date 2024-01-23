//
//  PostManager.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

final class PostManager {
    
    static let shared = PostManager()
    
    func getPostItems(onSucces: @escaping (([PostModel]) -> Void), 
                      onError: @escaping ((ErrorTypes) -> Void)) {
        NetworkManager.shared.request(type: [PostModel].self, url: .post, method: .get) { response in
            switch response {
            case .success(let success):
                onSucces(success)
            case .failure(let failure):
                onError(failure)
            }
        }
    }
}
