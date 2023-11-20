//
//  CommentViewModel.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

class CommentViewModel {
    
    var postId = 0
    var commentItems = [Comment]()
    
    func getComment(complete: @escaping((String?)->())) {
        CommentManager.shared.getCommentItems(postID: postId) { items, errorMessage in
            if let items {
                self.commentItems = items
            }
            complete(errorMessage)
        }
    }
}
