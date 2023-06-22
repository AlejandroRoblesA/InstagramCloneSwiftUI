//
//  CurrentProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 18/06/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.userName == user.userName }
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView(user: user)
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[2])
    }
}
