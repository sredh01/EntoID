//
//  UserSignInView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/18/24.
//

import SwiftUI

struct UserSignInView: View {
    
    @State private var userEmail = ""
    @State private var userPassword = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundCream.ignoresSafeArea()
                
                Image("watercolor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
                
                Image("trees")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomLeading)
                    .edgesIgnoringSafeArea(.bottom)
                
                
                VStack {
                    Image("EntoIDLogo")
                        .resizable()
                        .frame(maxWidth: 250, maxHeight: 250, alignment: .center)
                    
                    VStack(spacing: 35) {
                        TextField("Your Email", text: $userEmail)
                            .padding()
                            .background(Color.theme.backgroundCream)
                            .foregroundColor(Color.theme.accentSlate)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.theme.accentSoftTeal, lineWidth: 1)
                            )
                            .frame(width: 300, height: 50)
                        
                        
                        SecureField("Password", text: $userPassword)
                            .padding()
                            .background(Color.theme.backgroundCream)
                            .foregroundColor(Color.theme.accentSlate)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.theme.accentSoftTeal, lineWidth: 1)
                            )
                            .frame(width: 300, height: 50)
                    }
                    .font(.custom("Alice-Regular", size: 23))
                    
                    // MARK: - CHANGE TO BUTTON. IMPLEMENT LOGINLOGIC. ------------------------------------------------------
                    
                    NavigationLink {
                        // Send User to UserSignInView, hide back button
                        MainTabView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Sign In")
                            .font(.custom("Alice-Regular", size: 23))
                    }
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.theme.backgroundCream)
                    .background(Color.theme.primaryGreen)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    
                    
                    /*                Button(action: {
                     // Sign in logic
                     }, label: {
                     Text("Sign In")
                     .font(.custom("Alice-Regular", size: 23))
                     })
                     .frame(width: 300, height: 50)
                     .foregroundColor(Color.theme.primaryBeige)
                     .background(Color.theme.primaryGreen)
                     .cornerRadius(10)
                     .padding(.top, 20)
                     */
                    NavigationLink {
                        // Send User to UserSignInView
                        UserSignUpView()
                    } label: {
                        Text("Dont have an acount? Sign Up!")
                    }
                    .font(.custom("Alice-Regular", size: 18))
                    .foregroundColor(Color.theme.accentSoftTeal)
                    
                    Spacer().frame(height: 200)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    UserSignInView()
}

