//
//  EditProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 25/06/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedImages: PhotosPickerItem?
    @State private var fullName = ""
    @State private var bio = ""
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    Spacer()
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                Divider()
            }
            PhotosPicker(selection: $selectedImages) {
                VStack {
                    Image(systemName: "person")
                        .resizable()
                        .foregroundColor(.white)
                        .background(.gray)
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Divider()
                }
            }
            .padding(.vertical, 8)
            VStack {
                EditProfileRowView(title: "Name", placeholder: "Enter your name", text: $fullName)
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio", text: $bio)
            }
            Spacer()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
