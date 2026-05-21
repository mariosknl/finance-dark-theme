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
            VStack(alignment: .leading) {
         
                xView()
                
                AvatarView()
                
                Spacer()
            }
        }
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

struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(fontColor)
                .background(darkBackground2)
                .clipShape(Circle())
            TextView(text: "Marios Knl", font: .largeTitle)
            TextView(text: "iOS Developer", font: .headline)
        }
    }
}

struct xView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("x")
                .font(.title)
                .padding()
                .foregroundColor(fontColor)
                .background(darkBackground2)
                .cornerRadius(10)
        }
    }
}

#Preview {
    AboutView()
}
