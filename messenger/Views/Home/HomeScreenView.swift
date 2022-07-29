//
//  HomeScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct HomeScreenView: View {
    @State var searchText: String = ""
    
    let messages = [
        ["user":"Catherine", "message":"Hi there, How's your work ? did you completed that cross platform app ? ", "time": "10:30 AM"]
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(.white).edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    HStack {
                        Image("bakode")
                            .resizable()
                            .frame(width: 28, height: 28)
                        VStack(alignment: .leading) {
                            Text("Karlota Messanger")
                                .font(.custom("Poppins-SemiBold", size: 14))
                                .foregroundColor(.black)
                            Text("by BAKODE.ID")
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.black)
                        }

                    }.padding(.top, 14)
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink(
                            destination: ProfileScreenView()
                                .navigationBarHidden(true)
                        ) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .background(.black.opacity(0.05))
                                .frame(width: 28, height: 28)
                                .clipShape(Circle())
                                .foregroundColor(.black)
                                .font(.title2)
                        }
                    }.padding(.top, 14)
                }
                ScrollView(showsIndicators: false) {
                    SearchView(searchText: $searchText)
                    
                    Divider().padding(.bottom, 20)
                    
                    VStack(spacing: 25) {
                        ForEach(messages, id: \.self) { message in
                            NavigationLink(
                                destination: ConversationScreenView()
                                    .navigationBarHidden(true)
                            ) {
                                ChatItem(
                                    userImage: String(describing: message["user"]!),
                                    userName: String(describing: message["user"]!),
                                    message: String(describing: message["message"]!),
                                    time: String(describing: message["time"]!)
                                )
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal, 18)
            
            HStack {
                Spacer()
                Button(action: {
                                //Place your action here
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .font(.system(size: 100))
                        .foregroundColor(.black)
                        .shadow(color: .white, radius: 0.2, x: 1, y: 1)
                        .padding()
                }
            }
            .padding(.bottom, 16)
            .padding(.trailing, 16)
        }
    }
}

struct SearchView: View {
    @Binding var searchText: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    
                TextField("Search", text: $searchText)
                    .foregroundColor(.primary)
                    
                Button(action: {
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                }
            }
            .padding(15)
            .foregroundColor(.secondary)
            .background(.black.opacity(0.05))
            .clipShape(Capsule())
            
        }
        .padding(.vertical)
    }
}

struct ChatItem: View {
    var userImage: String = ""
    var userName: String = ""
    var message: String = ""
    var time: String = ""
    
    var body: some View {
        HStack{
            Image(userImage)
                .resizable()
                .background(.black.opacity(0.05))
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 8){
                HStack {
                    Text(userName)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.top, 3)
                    Spacer()
                    Text(time)
                        .foregroundColor(.black)
                        .padding(.top, 3)
                }
                Text(message.trimmingCharacters(in: .whitespaces))
                    .foregroundColor(.black.opacity(0.5))
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Divider()
                    .padding(.top, 8)
            }
            .padding(.horizontal, 10)
        }
    }
}


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
