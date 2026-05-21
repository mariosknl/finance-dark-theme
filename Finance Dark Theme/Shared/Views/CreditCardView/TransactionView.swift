//
//  TransactionView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct TransactionView: View {
    let imageName: String?
    let payTo: String
    let month: Int
    let day: Int
    let amount: Int
    let isExpense: Bool
    
    var body: some View {
        HStack {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .foregroundColor(fontColor)
                    .font(.title.bold())
            }
            VStack(alignment: .leading, spacing: 7) {
                TextView(text:payTo, font: .title)
                
                if month >= 0 && month <= 12 {
                    let cal = Calendar.current
                    let monthName = cal.monthSymbols[month - 1]
                    
                    
                    TextView(text:"\(monthName) / \(day)", font: .subheadline)
                }
            }.padding(.horizontal)
            Spacer()
            
            Text("\(isExpense ? "-" : "+")$\(amount)")
                .foregroundColor(fontColor)
                .font(.caption)
            
        }.padding()
            .padding()
            .background(darkBackground2)
            .cornerRadius(20)
            .padding(.horizontal)
        
    }
}

#Preview {
    TransactionView(
        imageName: nil,
        payTo: "Electric",
        month: 3,
        day: 20,
        amount: 2000,
        isExpense: true
    )
}
