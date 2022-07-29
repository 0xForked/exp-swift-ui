//
//  messengerApp.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

@main
struct messengerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashScreenView()
                    .navigationBarHidden(true)
            }
        }
    }
}
