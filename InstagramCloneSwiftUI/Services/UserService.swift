//
//  UserService.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 24/06/23.
//

import Foundation
import Firebase

struct UserService {
    static func fetchAllUsers() async throws -> [User] {
        var users = [User]()
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let documents = snapshot.documents
        
        for doc in documents {
            print(doc.data())
        }
        return users
    }
}
