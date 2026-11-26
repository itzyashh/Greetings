//
//  ContentView.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI

struct ContentView: View {
    
    let messages: [DataItemModel] = [
        DataItemModel(
            text: "Hello",
            color: .green
        ),
        DataItemModel(
            text: "Welcome to Swift Programming",
            color: .green
        ),
        DataItemModel(
            text: "Start exploring",
            color: .green
        )

    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(messages) { message in
                TextView(text: message.text, color: message.color)
            }
        }
    }
}

#Preview {
    ContentView()
}
