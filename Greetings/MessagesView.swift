//
//  MessagesView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        DataItemModel(text: "Hello World", color: .blue),
        DataItemModel(text: "Hi", color: .blue),
        DataItemModel(text: "Ready", color: .blue)

    ]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { message in
                TextView(text: message.text, color: message.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
