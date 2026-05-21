//
//  TextView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct TextViewGeneral: View {
    var text: String
    var font: Font
    var fontWeight: Font.Weight
    let color: Color
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(font)
            .fontWeight(fontWeight)
    }
}

struct TextView: View {
    var text: String
    var font: Font
    
    var body: some View {
        Text(text)
            .foregroundColor(fontColor)
            .font(font)
    }
}

struct TextViewWhite: View {
    var text: String
    var font: Font
    var fontWeight: Font.Weight
    
    var body: some View {
        Text(text)
           .font(font)
           .fontWeight(fontWeight)
           .foregroundColor(white)
           .padding(.horizontal)
    }
}


