//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {

    let postViewModel = PostViewModel()
    let commentViewModel = CommentViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postViewModel.getPostItems { errorMessage in
            if let errorMessage {
                print(errorMessage)
            } else {
                self.postViewModel.postItems.forEach { item in
                    print(item)
                }
            }
        }
        
        commentViewModel.getComment { errorMessage in
            if let errorMessage {
                print(errorMessage)
            } else {
                self.commentViewModel.commentItems.forEach { item in
                    print(item)
                }
            }
        }
    }
}
