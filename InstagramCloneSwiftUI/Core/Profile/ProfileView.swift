//
//  ProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 15/06/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.userName == user.userName }
    }
    var body: some View {
        ScrollView {
            ProfileHeaderView(user: user)
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[2])
    }
}
