//
//  TextView.swift
//  Greetings
//
//  Created by Yash Jadhav on 27/11/26.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .padding()
            .background(color)
            .cornerRadius(20)
            .fontWeight(.semibold)
            
    }
}

#Preview {
    TextView(text: "Hello", color: .green)
}
