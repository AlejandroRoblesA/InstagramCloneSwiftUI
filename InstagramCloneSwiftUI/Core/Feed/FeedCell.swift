//
//  FeedCell.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 16/06/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("batman")
                Spacer()
            }
            .padding(.leading, 8)
            Image("batman2")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            HStack(spacing: 16) {
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    print("Share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top,1)
            HStack {
                Text("batman ")
                    .fontWeight(.semibold)
                +
                Text("This is some test caption for now, this is some test caption ")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top,1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
