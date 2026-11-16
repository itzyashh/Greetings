//
//  ContentView.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI


struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                
                TitleView()
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
    GreetingsView()
}
