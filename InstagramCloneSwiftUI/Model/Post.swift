//
//  Post.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 19/06/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Date
    var user: User?
}
