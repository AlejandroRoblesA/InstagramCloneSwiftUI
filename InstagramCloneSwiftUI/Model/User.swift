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
