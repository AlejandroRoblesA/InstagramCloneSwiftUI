//
//  MainTabView.swift
//  InstagramCloneSwiftUI
//
//  Created by Alejandro Robles on 15/06/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selecetedIndex = 0
    var body: some View {
        TabView(selection: $selecetedIndex) {
            FeedView()
                .onAppear{
                    selecetedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            SearchView()
                .onAppear{
                    selecetedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            UploadPostView(tabIndex: $selecetedIndex)
                .onAppear{
                    selecetedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }.tag(2)
            Text("Notifications")
                .onAppear{
                    selecetedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }.tag(3)
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear{
                    selecetedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
