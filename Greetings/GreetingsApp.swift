//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI


@main
struct GreetingsApp: App {
    
    @State private var language: String = "en"
    @State private var layoutlanguageString: String = "en"

    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $layoutlanguageString
            )
        }
    }
}
