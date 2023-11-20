//
//  Comment.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import Foundation

struct Comment: Codable {
    let postID: Int?
    let id: Int?
    let name:String?
    let email: String?
    let body: String?
}
