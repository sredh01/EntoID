//
//  LoginView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/16/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var CurrentPage = 0
    
    let images = ["Butterfly",
                  "Insects",
                  "FireAnt"]
    
    var body: some View {
        ZStack{
            Color.theme.backgroundCream.ignoresSafeArea()
            
            VStack {
                TabView(selection: $CurrentPage) {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .tag(index)
                    }
                }
                .ignoresSafeArea(edges: .top)
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 400)
                
                
                Text("Embark on a journey through the insect kingdom with EntoID – discover, identify, and learn about the incredible insects that share our world.")
                    .font(.custom("Alice-Regular", size: 21))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.theme.accentSlate)
                    .padding()
                
                
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}
