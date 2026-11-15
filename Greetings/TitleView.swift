//
//  TitleView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct TitleView: View {
    
    let text: String
    @State var headline: String
    
    let headlines: [String] = [
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
    
    let defaultValue = "Explore IOS Programming"
    
    let circleDia = 70.0
    let lineWidth = 15.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.red, .yellow, .blue], center: .center, angle: .zero)
    }

    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 0) {
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(headline)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            Spacer()
            VStack {
                Circle()
                    .strokeBorder(angularGradient, lineWidth: lineWidth)
                    .rotationEffect(angle)
                    .frame(width: circleDia, height: circleDia)
                    .onTapGesture {
                        withAnimation {
                            isRotated.toggle()
                        }
                }
            }
        }
        .onTapGesture {
            headline = headlines.randomElement() ?? defaultValue
        }

    }
}

#Preview {
    TitleView(text: "Greetings", headline: "Explore IOS Programming").padding()
}
