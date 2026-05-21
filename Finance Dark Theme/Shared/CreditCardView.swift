//
//  CreditCardView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct CreditCardView: View {
    let creditCardNumber: String
    
    var body: some View {
        let chipWidth: CGFloat = 40
        let chipHeight: CGFloat = 30
        
        ZStack {
            purple
                .frame(height: 200)
                .cornerRadius(20)
            .padding()
             
            VStack(alignment: .leading) {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(
                            LinearGradient(
                                colors: [gold2, gold, gold2],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .frame(width: chipWidth, height: chipHeight)
                        .overlay(
                            Image("EMV Chip")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: chipWidth, height: chipHeight)
                        )
                        .padding()
                        
                    Spacer()
                }
                Spacer()
            }.frame(height: 200)
                .padding()
        }
    }
}

#Preview {
    CreditCardView(creditCardNumber: "4562 1122 4595 7852")
}
