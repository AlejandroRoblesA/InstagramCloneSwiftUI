//
//  SearchView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 16/06/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...5, id: \.self) { _  in
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
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
