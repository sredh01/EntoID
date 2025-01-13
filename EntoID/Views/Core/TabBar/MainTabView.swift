//
//  MainTabView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor(Color.theme.backgroundCream)
        
        // Unselected icon color + Text Color
        appearance.stackedLayoutAppearance.normal.iconColor = UIColor(Color.theme.accentSoftTeal)
        appearance.stackedLayoutAppearance.normal.titleTextAttributes =
        [.foregroundColor: UIColor(Color.theme.accentSoftTeal)]
        
        
        // Selected icon color + Text Color
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color.theme.secondROrange)
        appearance.stackedLayoutAppearance.selected.titleTextAttributes =
        [.foregroundColor: UIColor(Color.theme.secondROrange)]
        

        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            Group {
                HomePageView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(0)

                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                    .tag(1)
                
                CameraView()
                    .tabItem {
                        Label("Camera", systemImage: "camera")
                    }
                    .tag(2)
                
                NotificationsView()
                    .tabItem {
                        Label("Notification", systemImage: "bell")
                    }
                    .tag(3)
                
                // I think it makes more sense to have the favorites within your profile. 
/*                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart")
                    }
                    .tag(4)
*/
                UserProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                    .tag(5)
            }
            
        }
    }
}

#Preview {
    MainTabView()
}
