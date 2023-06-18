//
//  LoginView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 17/06/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Image("instagramblack")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 100)
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                }
                
                Button {
                    print("Show forgot password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 20)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
