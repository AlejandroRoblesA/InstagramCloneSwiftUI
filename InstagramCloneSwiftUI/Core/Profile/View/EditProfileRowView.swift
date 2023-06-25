//
//  EditProfileRowView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 25/06/23.
//

import SwiftUI

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            VStack{
                TextField(placeholder, text: $text)
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

struct EditProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileRowView(title: "Name", placeholder: "Name", text: .constant("Tony Stark"))
    }
}
