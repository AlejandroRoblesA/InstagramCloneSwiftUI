//
//  SearchView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 16/06/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(0...15, id: \.self) { _  in
                    HStack {
                        Image("batman2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("batman")
                                .fontWeight(.semibold)
                            Text("Bruce Wayne")
                        }
                        .font(.footnote)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
