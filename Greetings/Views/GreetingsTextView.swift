//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct GreetingsTextView: View {
    
    let text: LocalizedStringKey = "Greetings"
    @Binding var headline: LocalizedStringKey
    
    let headlines: [LocalizedStringKey] = [
        "Build amazing apps with SwiftUI",
        "Master concurrency with async/await",
        "Design beautiful interfaces for iOS",
        "Explore Combine and reactive patterns",
        "Persist data cleanly with SwiftData",
        "Delight users with smooth animations",
        "Level up with Swift package management",
        "Ship faster with previews and testing",
        "Adopt modern navigation patterns",
        "Optimize performance and memory usage"
    ]
    
    let defaultValue: LocalizedStringKey = "Explore IOS Programming"

    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(headline)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            headline = headlines.randomElement() ?? defaultValue
        }


    }
}

#Preview {
    GreetingsTextView(headline:.constant("Build amazing apps with SwiftUI"))
}
