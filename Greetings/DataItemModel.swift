//
//  DataItemModel.swift
//  Greetings
//
//  Created by Yash Jadhav on 15/11/26.
//

import SwiftUI
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
