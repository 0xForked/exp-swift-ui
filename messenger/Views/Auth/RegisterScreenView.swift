//
//  ForgotPasswordScreenView.swift
//  messenger
//
//  Created by aasumitro on 29/07/22.
//

import SwiftUI

struct RegisterScreenView: View {
    @Environment(\.presentationMode) var presentationMode

    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        Color.black.ignoresSafeArea().overlay {
            ZStack {
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
                        Text("Fullname")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(.black)
                        TextField("Lorem Ipsum", text: $name)
                            .autocapitalization(.words)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .foregroundColor(.black)
                            .padding([.horizontal], 18)
                            .overlay(RoundedRectangle(cornerRadius:10).stroke(.black))
                        
                        Text("Email address")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(.black)
                        TextField("example@karlota.id", text: $email)
                            .autocapitalization(.none)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .foregroundColor(.black)
                            .padding([.horizontal], 18)
                            .overlay(RoundedRectangle(cornerRadius:10).stroke(.black))

                        Text("Password")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(.black)
                        SecureField("* * * * * *", text: $password)
                            .autocapitalization(.none)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .foregroundColor(.black)
                            .padding([.horizontal], 18)
                            .overlay(RoundedRectangle(cornerRadius:10).stroke(.black))
                        
                        Button(action: {print("do regster")}) {
                            HStack {
                                Spacer()
                                Text("Sign up")
                                    .font(.custom("Poppins-SemiBold", size: 16))
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
                            Text("already have an account?")
                                .font(.custom("Poppins-Light", size: 14))
                                .foregroundColor(.black)
                            Text("Sign-in!")
                                .underline()
                                .font(.custom("Poppins-Light", size: 14))
                                .foregroundColor(.blue)
                                .onTapGesture { self.presentationMode.wrappedValue.dismiss() }
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

struct RegisterScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreenView()
    }
}
