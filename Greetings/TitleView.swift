//
//  TitleView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct TitleView: View {
    
    let text: String
    let headline: String
    
    let circleDia = 70.0
    let lineWidth = 15.0
    
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
                    .strokeBorder(Color.red, lineWidth: lineWidth)
                    .frame(width: circleDia, height: circleDia)
            }
        }
    }
}

#Preview {
    TitleView(text: "Greetings", headline: "Explore IOS Programming").padding()
}
