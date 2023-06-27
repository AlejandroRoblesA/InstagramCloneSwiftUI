//
//  Post.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 19/06/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 123,
              imageURL: "batman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Wakanda Forever",
              likes: 104,
              imageURL: "blackpanther",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Iron Man",
              likes: 12,
              imageURL: "ironman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 123,
              imageURL: "venom2",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 123,
              imageURL: "venom3",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1])
    ]
}
