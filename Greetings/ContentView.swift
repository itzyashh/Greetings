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
            VStack(alignment: .leading) {
                
                TitleView(text: "Greetings", headline: "Explore IOS Programming")
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
