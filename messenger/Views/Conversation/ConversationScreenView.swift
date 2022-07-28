//
//  ConversationScreenView.swift
//  messenger
//
//  Created by aasumitro on 28/07/22.
//

import SwiftUI

struct ConversationScreenView: View {
    var body: some View { 
        List {
            ForEach(1...25, id: \.self) { index in
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text("Item \(index)")
                }
            }
        }
    }
}

struct ConversationScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationScreenView()
    }
}
