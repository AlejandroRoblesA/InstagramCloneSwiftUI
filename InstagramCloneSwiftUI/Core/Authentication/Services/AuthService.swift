//
//  AuthService.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 21/06/23.
//

import Foundation
import FirebaseAuth

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    init() {
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String , password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, userName: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signOut() {
        
    }
}
