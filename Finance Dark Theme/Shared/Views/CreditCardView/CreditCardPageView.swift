//
//  CreditCardPageView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct CreditCardPageView: View {
    let transactions: [(imageName: String?, payTo: String, month: Int, day: Int, amount: Int, isExpense: Bool, isSystemIcon: Bool)] = [
            (
                imageName: "bolt",
                payTo: "KFC",
                month: 3,
                day: 20,
                amount: 2000,
                isExpense: true,
                isSystemIcon: true
            ),
            (
                imageName: paypalIcon,
                payTo: "Electric",
                month: 6,
                day: 28,
                amount: 2000,
                isExpense: false,
                isSystemIcon: false
            ),
            (
                imageName: wrenchIcon,
                payTo: "Car Repair",
                month: 8,
                day: 12,
                amount: 232010,
                isExpense: true,
                isSystemIcon: false
            ),
            (
                imageName: "dollarsign.circle",
                payTo: "Win Prize",
                month: 8,
                day: 12,
                amount: 232010,
                isExpense: false,
                isSystemIcon: true
            ),
    ]
    
    let numActiveCards: Int = 3
    
    var body: some View {
        ZStack {
            
            darkBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                TopView()
                
                YourCardsView(numActiveCard: numActiveCards)
                
                CreditCardView(
                    creditCardNumber: "4562 1122 4595 7852",
                    name: "John Doe",
                    expiryMonth: 12,
                    expiryYear: 2025
                )
                
                TextView(text: "Recent Transactions", font: .title2.bold())
                    .padding()
                Spacer()
                
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(0..<transactions.count) { i in
                            TransactionView(
                                imageName: transactions[i].imageName,
                                payTo: transactions[i].payTo,
                                month: transactions[i].month,
                                day: transactions[i].day,
                                amount: transactions[i].amount,
                                isExpense: transactions[i].isExpense,
                                isSystemIcon: transactions[i].isSystemIcon
                            )
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CreditCardPageView()
}
