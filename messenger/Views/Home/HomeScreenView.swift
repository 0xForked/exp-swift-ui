//
//  HomeScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

enum Tab: Hashable {
    case messages
    case newMessage
    case profile
}

struct HomeScreenView: View {
    @State var selectedTab = Tab.messages

    var body: some View {
        VStack() {
            GeometryReader { proxy in
                CurrentTabPage(selectedTab: $selectedTab)
                        .frame(width: UIScreen.main.bounds.size.width,
                               height: UIScreen.main.bounds.size.height -
                               (CustomTabBar.tabBarHeight + proxy.safeAreaInsets.bottom))
            }
            CustomTabBar(selectedTab: $selectedTab)
               
        }
        .background(Color(.lightGray))
        .animation(.default, value: 1)
    }
}

struct CurrentTabPage: View {
    @Binding var selectedTab: Tab

    var body: some View {
        switch selectedTab {
        case .messages:
            ConversationScreenView()
        case .newMessage:
            Text("New")
        case .profile:
            ProfileScreenView()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
