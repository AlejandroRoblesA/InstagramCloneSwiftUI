//
//  EditProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 25/06/23.
//

import SwiftUI


struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
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
            }
            .padding()
            Divider()
        }
        
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
