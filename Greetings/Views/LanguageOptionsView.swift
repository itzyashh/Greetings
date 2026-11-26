//
//  LanguageOptionsView.swift
//  Greetings
//Image(systemName: "gear")
//  Created by Yash Jadhav on 18/11/26.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gear")
            .contextMenu{
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Hebrew") {
                    language = "he"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Hindi") {
                    language = "hi"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Spanish") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }

            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
