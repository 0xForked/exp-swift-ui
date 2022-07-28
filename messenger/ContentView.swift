//
//  ContentView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Hello World")
                .foregroundColor(.white)
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
