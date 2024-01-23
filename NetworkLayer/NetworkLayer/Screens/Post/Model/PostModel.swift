//
//  Post.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

// MARK: - PostModel
struct PostModel: Codable {
    let id: Int?
    let title: String?
    let body: String?
}
