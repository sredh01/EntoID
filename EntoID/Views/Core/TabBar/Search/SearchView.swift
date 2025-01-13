//
//  SearchView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the Search view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SearchView()
}
