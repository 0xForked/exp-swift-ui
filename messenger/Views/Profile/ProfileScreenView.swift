//
//  ProfileScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct ProfileScreenView: View {
    var body: some View {
        List {
            ForEach(1...25, id: \.self) { index in
                HStack {
                    Image(systemName: "filemenu.and.cursorarrow")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text("Menu \(index)")
                }
            }
        }
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}
