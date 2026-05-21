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
            
            VStack {
                YourCardsView(numActiveCard: 3)
                
                CreditCardView(
                    creditCardNumber: "4562 1122 4595 7852",
                    name: "John Doe",
                    expiryMonth: 12,
                    expiryYear: 2025
                )
                
                VStack(alignment: .leading, spacing: 0) {
                    TextView(text: "Recent Transactions", font: .title)
                }
            }
        }
    }
}

#Preview {
    CreditCardPageView()
}
