//
//  CreditCardView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct CreditCardView: View {
    let creditCardNumber: String
    let name: String
    let expiryMonth: Int
    let expiryYear: Int
    
    var body: some View {
        let chipHeight: CGFloat = 25
        let chipWidth: CGFloat = chipHeight * 4/3
        
        ZStack {
            purple
                .frame(height: 200)
                .cornerRadius(20)
            .padding()
             
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(goldChip)
                        .resizable()
                        .frame(width: chipWidth, height: chipHeight)
                        .padding()
                    Spacer()
                }
                
                TextViewWhite(
                    text: creditCardNumber,
                    font: .title2,
                    fontWeight: .bold
                )
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        TextViewWhite(
                            text: name,
                            font: .caption,
                            fontWeight: .bold
                        )
                        
                        VStack(alignment: .leading, spacing: 3) {
                            TextViewWhite(
                                text: "Expiry Date",
                                font: .caption2,
                                fontWeight: .thin
                            )
                            
                            Text(verbatim: "\(expiryMonth)/\(expiryYear)")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(white)
                                .padding(.horizontal)
                        }
                    }
                    Spacer()
                    VStack {
                        let circleDim: CGFloat = 30
                        HStack(spacing: -10) {
                            Circle()
                                .fill(red)
                                .frame(width:circleDim, height: circleDim)
                                .zIndex(1)
                                .shadow(radius: 5)
                                .opacity(0.8)
                            Circle()
                                .fill(orange)
                                .frame(width:circleDim, height: circleDim)
                                .shadow(radius: 5)
                                .opacity(0.8)
                        }
                        
                        TextViewWhite(
                            text: "Mastercard",
                            font: .caption2,
                            fontWeight: .semibold
                        )
                    }
                }
            }.frame(height: 200)
                .padding()
        }
    }
}

#Preview {
    CreditCardView(
        creditCardNumber: "4562 1122 4595 7852",
        name: "John Doe",
        expiryMonth: 12,
        expiryYear: 2025
    )
}
