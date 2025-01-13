//
//  FavoritesView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the favorites view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FavoritesView()
}
