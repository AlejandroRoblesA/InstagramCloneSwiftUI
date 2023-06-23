//
//  RegistrationViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 22/06/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var userName = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, userName: userName)
        email = ""
        password = ""
        userName = ""
    }
}
