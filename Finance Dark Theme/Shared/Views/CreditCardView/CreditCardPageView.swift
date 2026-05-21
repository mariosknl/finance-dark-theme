//
//  CreditCardPageView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct CreditCardPageView: View {
    var body: some View {
        ZStack {
            
            darkBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                TopView()
                
                YourCardsView(numActiveCard: 3)
                
                CreditCardView(
                    creditCardNumber: "4562 1122 4595 7852",
                    name: "John Doe",
                    expiryMonth: 12,
                    expiryYear: 2025
                )
                
                TextView(text: "Recent Transactions", font: .title2.bold())
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    CreditCardPageView()
}
