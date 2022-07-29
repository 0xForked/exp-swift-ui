//
//  ProfileScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct ProfileScreenView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 12, height: 21)
                        .foregroundColor(.black)
                    VStack(alignment: .leading) {
                        Text("Preferences")
                            .font(.custom("Poppins-SemiBold", size: 14))
                            .foregroundColor(.black)
                        Text("Personalize your personal data")
                            .font(.custom("Poppins-Regular", size: 10))
                            .foregroundColor(.black)
                    }.padding(.leading, 8)
                    Spacer()
                }
                .padding(.top, 14)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
                
                ScrollView {
                    SettingsHeaderItem()

                    SettingsItem(icon: "person", title: "Account")
                    SettingsItem(icon: "bell", title: "Notifications and Sounds")
                    SettingsItem(icon: "lock", title: "Privacy & Security")
                    SettingsItem(icon: "archivebox", title: "Data and Storage")
                    SettingsItem(icon: "globe", title: "Language", selectedValue: "English")
                }
                .padding(.vertical)
            }.padding()
        }
    }
}

struct SettingsItem: View {
    var icon: String = ""
    var title: String = ""
    var selectedValue: String?
    
    var body: some View {
        HStack{
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 6){
                HStack{
                    Text(title)
                        .fontWeight(.semibold)
                        .padding(.top, 3)
                    Spacer()
                    
                     selectedValue != nil ?
                        Text(selectedValue ?? "")
                        .foregroundColor(.black.opacity(0.5))
                        .padding(.top, 3): nil
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
                
                Divider().padding(.top, 8)
            }
            .padding(.horizontal, 10)
        }
        .padding(.vertical, 10)
    }
}

struct SettingsHeaderItem: View {
    var body: some View {
        HStack{
            Image("Shezad")
                .resizable()
                .background(.black.opacity(0.05))
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 6){
                HStack{
                    Text("Dummy Lorto")
                        .fontWeight(.semibold)
                        .padding(.top, 3)
                    Spacer()
                }
                
                HStack{
                    Text("dummy@karlota.id")
                        .foregroundColor(Color("color_bg_inverted").opacity(0.5))
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                }
                
                Divider()
                    .padding(.top, 8)
            }
            .padding(.horizontal, 10)
        }
        .padding(.vertical, 20)
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}
