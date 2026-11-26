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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String

    
    
    
    var body: some View {
        if isPortrainPhone || isIpad {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
