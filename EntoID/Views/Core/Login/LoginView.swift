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
        
        NavigationView {
            ZStack{
                Color.theme.backgroundCream.ignoresSafeArea()
                
                VStack {
                    TabView(selection: $CurrentPage) {
                        ForEach(0..<images.count, id: \.self) { index in
                            Image(images[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .frame(height: 400)
                    .onReceive(timer) { _ in
                        withAnimation {
                            CurrentPage = (CurrentPage + 1) % images.count
                        }
                    }
                    
                    Spacer().frame(height: 50)
                    
                    VStack (spacing: 10) {
                        
                        Text("EntoID")
                            .font(.custom("Alice-Regular", size: 40))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.theme.accentSlate)
                            .padding()
                        Text("discover, identify, and learn about the incredible insects that share our world.")
                            .font(.custom("Alice-Regular", size: 21))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.theme.accentSlate)
                            .padding()
                        
                        NavigationLink {
                            // Send User to sign up view
                            UserSignUpView()
                        } label: {
                            Text("Sign Up")
                        }
                        .frame(width: 300, height: 50)
                        .background(Color.theme.accentSoftTeal.opacity(0.9)).cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.theme.accentSoftTeal, lineWidth: 1)
                        )
                        
                        NavigationLink {
                            // Send User to UserSignInView
                            UserSignInView()
                        } label: {
                            Text("Sign in with email")
                        }
                        .frame(width: 300, height: 50)
                        .background(Color.theme.primaryGreen.opacity(0.9)).cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.theme.accentSoftTeal, lineWidth: 1)
                        )
                    }
                    .font(.custom("Alice-Regular", size: 23))
                    .foregroundColor(Color.theme.backgroundCream)

                    Spacer()
                }
                .ignoresSafeArea()
            }
        }.accentColor(Color.theme.accentSlate)
    }
    // Timer for automatic slide transition
    let timer = Timer.publish(every: 3.2, on: .main, in: .common).autoconnect()
}

#Preview {
    LoginView()
}
