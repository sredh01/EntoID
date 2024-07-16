//
//  HomePageView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the home view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomePageView()
}
