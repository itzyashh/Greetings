//
//  TitleView.swift
//  Greetings
//
//  Created by Yash Jadhav on 16/11/26.
//

import SwiftUI

/// This is the title view of the app which is standalone and has no parameters, has title, headline and ring on right side (Vertical)

struct VerticalTitleView: View {
    
    
    @State var headline: LocalizedStringKey = "Build amazing apps with SwiftUI"
    

    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(headline: $headline)
            RotatableCircleView()
        }

    }
}

#Preview {
    VerticalTitleView()
}
