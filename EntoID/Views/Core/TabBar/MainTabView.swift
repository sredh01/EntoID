//
//  MainTabView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Group {
                HomePageView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(0)

                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(1)
                
                CameraView()
                    .tabItem {
                        Label("Camera", systemImage: "camera")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(2)
                
                NotificationsView()
                    .tabItem {
                        Label("Notification", systemImage: "bell")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(3)
                
                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(4)

                UserProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                            .foregroundColor(Color.theme.accentSlate)
                    }
                    .tag(5)
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.theme.backgroundCream, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
        .accentColor(Color.theme.backgroundCream) // Set tab bar item color
    }
}

#Preview {
    MainTabView()
}
