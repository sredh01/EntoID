//
//  SplashView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/16/24.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.1
    
    
    var body: some View {
        ZStack {
            Color.theme.backgroundCream.ignoresSafeArea()
            
            VStack {
                Image(.entoIDLogo)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.5)) {
                            self.size = 1.0
                            self.opacity = 1.0
                        }
                }
                    .onAppear() {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    SplashView()
}
