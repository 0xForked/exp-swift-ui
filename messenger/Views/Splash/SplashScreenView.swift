//
//  SplashScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var toHomePage = false
    @State private var size = 0.5
    @State private var opacity = 0.5

    var body: some View {
        if isActive && toHomePage {
            HomeScreenView()
                .navigationBarHidden(true)
        } else if isActive && !toHomePage {
            LoginScreenView()
                .navigationBarHidden(true)
        } else {
            Color.black.ignoresSafeArea().overlay {
                VStack {
                    VStack {
                        Image("bakode")
                        Text("Karlota Messenger")
                            .font(.custom("Poppins-SemiBold", size: 28))
                            .foregroundColor(.white.opacity(1))
                        Text("by BAKODE.ID")
                            .font(.custom("Poppins-Regular", size: 21))
                            .foregroundColor(.white.opacity(0.75))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.75
                            self.opacity = 1.0
                        }
                    }
                }.onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.isActive = true
                        self.toHomePage = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
