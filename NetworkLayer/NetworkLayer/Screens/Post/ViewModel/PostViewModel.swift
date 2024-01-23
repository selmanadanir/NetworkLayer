//
//  PostViewModel.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

final class PostViewModel {
    
    enum Change {
        case success([PostModel])
        case failed(ErrorTypes)
    }
    
    var changeHandler: ((Change) -> Void)?
    private let apiService: PostManager
    
    init(apiService: PostManager) {
        self.apiService = apiService
    }
    
    func changePost() {
        apiService.getPostItems { model in
            self.changeHandler?(.success(model))
        } onError: { error in
            self.changeHandler?(.failed(error))
        }
    }
}
