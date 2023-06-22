//
//  LoginViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 22/06/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
