//
//  ConversationScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct ConversationScreenView: View {
    @State var reply: String = ""
    
    let messages = [
        ["user": "false", "text":"Hi there?"],
        ["user": "true", "text":"Hello, can I help you?"],
    ]
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .bottom) {
            Color(.white).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 12, height: 21)
                        .foregroundColor(.black)
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    HStack {
                        Image("bakode")
                            .resizable()
                            .background(.black.opacity(0.05))
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Dummy Lorto")
                                .font(.custom("Poppins-SemiBold", size: 14))
                                .foregroundColor(.black)
                            Text("Active")
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.black.opacity(0.7))
                        }
                    }.padding(.leading, 8)
                    Spacer()
                }
                .padding(.top, 14)
                
                ScrollView(showsIndicators: true) {
                    VStack(spacing: 25) {
                        ForEach(messages, id: \.self) { message in
                            MessageView(
                                contentMessage: String(describing: message["text"]!),
                                isCurrentUser: (String(describing: message["user"]!) as NSString).boolValue
                            )
                        }
                    }
                }.padding(.vertical, 18)
                
                HStack {
                    TextField("Lorem Ipsum", text: $reply)
                        .autocapitalization(.sentences)
                        .frame(height: 50)
                        .textFieldStyle(PlainTextFieldStyle())
                        .foregroundColor(.black)
                        .padding([.horizontal], 18)
                        .overlay(RoundedRectangle(cornerRadius:10).stroke(.black))
                    Button(action: {print("do send reply")}) {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
            }
            .padding(.top)
            .padding(.horizontal, 18)
        }
    }
}

struct MessageView : View {
    var contentMessage: String = ""
    var isCurrentUser: Bool = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            if !isCurrentUser {
                Image("bakode")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
            } else {
                Spacer()
            }
            
            ContentMessageView(
                contentMessage: contentMessage,
                isCurrentUser: isCurrentUser
            )
            
            if (!isCurrentUser) {
                Spacer()
            }
        }
    }
}

struct ContentMessageView: View {
    var contentMessage: String
    var isCurrentUser: Bool
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white : Color.black)
            .background(isCurrentUser ? Color.black : Color(UIColor(
                red: 240/255,
                green: 240/255,
                blue: 240/255,
                alpha: 1.0
            )))
            .cornerRadius(10)
    }
}

struct ConversationScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreenView()
    }
}
