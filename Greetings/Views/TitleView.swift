//
//  TitleView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

/// This is the title view of the app which is standalone and has no parameters, has title, headline and ring on right side

struct TitleView: View {
    
    
    @State var headline: LocalizedStringKey = "Build amazing apps with SwiftUI"
    

    var body: some View {
        HStack() {
            GreetingsTextView(headline: $headline)
            Spacer()
            RotatableCircleView()
        }

    }
}

#Preview {
    TitleView()
}
