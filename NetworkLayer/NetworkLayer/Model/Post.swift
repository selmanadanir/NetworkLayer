//
//  Post.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

struct Post: Codable {
    let userID: Int?
    let id: Int?
    let title: String?
    let body: String?
}
