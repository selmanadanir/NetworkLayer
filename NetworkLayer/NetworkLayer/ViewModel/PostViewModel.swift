//
//  PostViewModel.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

class PostViewModel {
    
    var postItems = [Post]()
    
    func getPostItems(complete: @escaping((String?) -> ())) {
        PostManager.shared.getPostItems { items, errorMessage in
            if let items = items {
                self.postItems = items
            }
            complete(errorMessage)
        }
    }
}
