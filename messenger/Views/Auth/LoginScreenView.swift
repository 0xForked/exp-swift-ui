//
//  LoginScreenView.swift
//  messenger
//
//  Created by aasumitro on 29/07/22.
//

import SwiftUI

struct LoginScreenView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            Color.black.ignoresSafeArea().overlay {
                VStack {
                    Image("bakode")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("Karlota Messanger")
                        .font(.custom("Poppins-Regular", size: 21))
                        .foregroundColor(.white)
                    Text("by BAKODE.ID")
                        .font(.custom("Poppins-Regular", size: 18))
                        .foregroundColor(.white.opacity(0.75))
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Email address")
                            .font(.custom("Poppins-Regular", size: 18))
                            .foregroundColor(.black)
                        TextField("example@karlota.id", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                        
                        HStack {
                            Text("Password")
                                .font(.custom("Poppins-Regular", size: 18))
                                .foregroundColor(.black)
                            Spacer()
                            NavigationLink(
                                destination: ForgotPasswordScreenView()
                                    .navigationBarBackButtonHidden(true)
                            ) {
                                Text("Forgot password?")
                                    .underline()
                                    .font(.custom("Poppins-Light", size: 14))
                                    .foregroundColor(.blue)
                            }
                        }
                        SecureField("* * * * * *", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                        
                        Button(action: {print("do login")}) {
                            HStack {
                                Spacer()
                                Text("Sign in")
                                    .font(.custom("Poppins-SemiBold", size: 18))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                        HStack {
                            Spacer()
                            Text("doesn't have an account?")
                                .font(.custom("Poppins-Light", size: 14))
                                .foregroundColor(.black)
                            NavigationLink(
                                destination: RegisterScreenView()
                                    .navigationBarBackButtonHidden(true)
                            ) {
                                Text("Sing-up!")
                                    .underline()
                                    .font(.custom("Poppins-Light", size: 14))
                                    .foregroundColor(.blue)
                            }
                            Spacer()
                        }
                    }
                    .padding(.all, 36)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                }.padding(.all, 36)
            }
        }
    }
}

struct AuthScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
