//
//  SearchViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 24/06/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init () {
        Task { try await fetchAllUsers() }
    }
    
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
