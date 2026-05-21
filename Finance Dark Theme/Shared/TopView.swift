//
//  TopView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct TopView: View {
    let dim: CGFloat = 50
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .font(.body.weight(.heavy))
                .frame(width: dim, height: dim)
                .foregroundColor(fontColor)
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .font(.body.weight(.heavy))
                .frame(width: dim, height: dim)
                .foregroundColor(fontColor)
                .rotationEffect(.degrees(90))
        }
        .padding()
        .background(darkBackground)
    }
}

#Preview {
    TopView()
}
