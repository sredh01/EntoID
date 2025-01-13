//
//  UserSignUpView.swift
//  EntoID
//
//  Created by Syrus Redhouse on 7/17/24.
//


//  Add logic to test if its good or not adn make borders flash the rust orange


import SwiftUI

struct UserSignUpView: View {
    
    @State private var userEmail = ""
    @State private var userFullName = ""
    @State private var userPassword = ""
    @State private var confirmPassword = ""
    @State private var left = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.backgroundGray.ignoresSafeArea()
                
                Image("DungBeetle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomLeading)
                    .edgesIgnoringSafeArea(.bottom)
                
                VStack {
                    Image("EntoIDLogo")
                        .resizable()
                        .frame(maxWidth: 250, maxHeight: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack(spacing: 25){
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
                        
                        TextField("Full Name", text: $userFullName)
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
                        
                        SecureField("Confirm Password", text: $confirmPassword)
                            .padding()
                            .background(Color.theme.backgroundCream)
                            .foregroundColor(Color.theme.accentSlate)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.theme.accentSoftTeal, lineWidth: 1)
                            )
                            .frame(width: 300, height: 50)
                        
                        Spacer()
                    }
                    
                    // MARK: - CHANGE TO BUTTON. IMPLEMENT REGISTRATION LOGIC. ------------------------------------------------------
                    
                    NavigationLink {
                        // Send User to HomePageView
                        MainTabView()
                            .navigationBarBackButtonHidden(true)

                    } label: {
                        Text("Register")
                    }
                    .font(.custom("Alice-Regular", size: 23))
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.theme.backgroundCream)
                    .cornerRadius(10)
                    .background(Color.theme.primaryGreen).cornerRadius(10)
                    .frame(width: 300, height: 50)
                    
                    // MARK: - CHANGE TO BUTTON. IMPLEMENT REGISTER LOGIC. ------------------------------------------------------
                    NavigationLink {
                        // Send User to UserSignInView
                        UserSignInView()
                    } label: {
                        Text("Already have an acount? Sign In!")
                    }
                    .font(.custom("Alice-Regular", size: 18))
                    .foregroundColor(Color.theme.accentSoftTeal)
                    
                    
                    /*                Button(action: {
                     // button logic send info to firebase
                     }, label: {
                     Text("Register")
                     .font(.custom("Alice-Regular", size: 23))
                     })
                     .frame(width: 300, height: 50)
                     .foregroundColor(Color.theme.primaryBeige)
                     .cornerRadius(10)
                     .background(Color.theme.primaryGreen).cornerRadius(10)
                     .frame(width: 300, height: 50)
                     */
                    Spacer().frame(height: 184)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    UserSignUpView()
}

