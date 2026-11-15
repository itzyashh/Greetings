//
//  BackgroundView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .blue,
                Color(red: 139 / 255, green: 80 / 255, blue: 240 / 255)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.5)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
