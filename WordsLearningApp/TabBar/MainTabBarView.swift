//
//  TabBarView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct MainTabBarView: View {
    
    var body: some View {
        TabView() {
            WordGroupView()
                .tabItem {
                    Image(systemName: "list.triangle")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Add")
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            Text("Favourite")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            Text("Account")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabBarView()
}
