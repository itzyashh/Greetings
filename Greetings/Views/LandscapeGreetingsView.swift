//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI


struct LandscapeGreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            HStack(alignment: .top) {
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
