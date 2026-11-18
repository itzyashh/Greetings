//
//  MainView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

// Portrait = Compact width, regular height
// Ipad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortrainPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var  isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular

    }
    
    var body: some View {
        if isPortrainPhone || isIpad {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
