//
//  FeedViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 28/06/23.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var post = [Post]()
    
    init () {
        Task { try await fetchPosts() }
    }

    @MainActor
    func fetchPosts() async throws {
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        self.post = try snapshot.documents.compactMap({ try $0.data(as: Post.self)})
    }
}
