//
//  YourCardsView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct YourCardsView: View {
    let numActiveCard: Int
    let yourCardsFont: Font = .title3
    let numActiveCardFont: Font = .caption
    var numActiveCardsFontWeight: Font.Weight = .thin
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                TextViewGeneral(
                    text: "Your cards",
                    font: yourCardsFont,
                    fontWeight: .bold,
                    color: fontColor
                )
                
                TextViewGeneral(
                    text: "You have \(numActiveCard) active cards",
                    font: numActiveCardFont,
                    fontWeight: numActiveCardsFontWeight,
                    color: fontColor
                )
            }
            
            Spacer()
            
            let plusDim: CGFloat = 50
            Image(systemName: "plus")
                .font(.body.weight(.heavy))
                .frame(width: plusDim, height: plusDim)
                .foregroundColor(darkBackground)
                .background(gold)
                .clipShape(Circle())
        }
        .padding()
        .background(.darkBackground)
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        YourCardsView(numActiveCard: 3)
    }
}
