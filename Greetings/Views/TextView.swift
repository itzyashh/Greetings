//
//  TextView.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI

struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = (0..<4).map { _ in
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            .background(color)
            .cornerRadius(15)
            .shadow(
                color: .orange,
                radius: 5,
                x: 5,
                y: 5
            )
            .onTapGesture {
                // Change color
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    TextView(text: "Hello", color: .blue)
}
