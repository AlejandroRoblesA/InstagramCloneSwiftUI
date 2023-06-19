//
//  ProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 15/06/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.userName == user.userName }
    }
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HStack {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    Spacer()
                    HStack(spacing: 8) {
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 12, title: "Followers")
                        UserStatView(value: 24, title: "Following")
                    }
                }
                .padding(.horizontal)
                VStack(alignment: .leading, spacing: 4) {
                    if let fullName = user.fullName {
                        Text(fullName)
                            .fontWeight(.semibold)
                    }
                    if let bio = user.bio {
                        Text(bio)
                    }
                    
                }
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                Divider()
            }
            LazyVGrid(columns: gridItems, spacing: 2) {
                ForEach(posts) { post in
                    Image(post.imageURL)
                        .resizable()
                        .scaledToFill()
                }
            }
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
