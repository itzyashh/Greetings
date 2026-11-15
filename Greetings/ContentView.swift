//
//  ContentView.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack() {
                
                TitleView(text: "Greetings", headline: "Explore IOS Programming")
                    .padding()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
