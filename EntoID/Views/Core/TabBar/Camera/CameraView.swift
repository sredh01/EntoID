//
//  CameraView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                Text("This is the camera view")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CameraView()
}
