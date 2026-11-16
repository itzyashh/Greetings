//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

struct RotatableCircleView: View {
    
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
}

#Preview {
    RotatableCircleView()
}
