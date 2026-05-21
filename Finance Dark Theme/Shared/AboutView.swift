//
//  AboutView.swift
//  Finance Dark Theme
//
//  Created by mkanellopoulos on 21/5/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            darkBackground
                    .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Text("x")
                        .font(.title)
                        .padding()
                        .foregroundColor(fontColor)
                        .background(darkBackground2)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    AboutView()
}
