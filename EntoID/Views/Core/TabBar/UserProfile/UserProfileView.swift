//
//  UserProfileView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the profile view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    UserProfileView()
}
