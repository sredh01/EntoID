//
//  NotificationsView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the notification view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NotificationsView()
}
