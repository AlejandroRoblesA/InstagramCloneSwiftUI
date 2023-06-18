//
//  User.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 18/06/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var userName: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, userName: "batman", profileImageUrl: "batman", fullName: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "vemom", profileImageUrl: "venom", fullName: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "ironman", profileImageUrl: "ironman", fullName: "Tony Stark", bio: "Iron Man", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "blackpanther", profileImageUrl: "blackpanther", fullName: "Chadwick Boseman", bio: "Black Panther", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "spiderman", profileImageUrl: "spiderman", fullName: "Peter Parker", bio: "Spiderman", email: "spiderman@gmail.com")
    ]
}
