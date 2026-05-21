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
                
                ChoicesView()
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ChoicesView: View {
    let dataArray: [(String, String, String?)] = [
        (title: "Corporate App", systemImage: "building.2", description: nil),
        (title: "Security Settings", systemImage: "lock", description: nil),
        (title: "Online Shopping", systemImage: "cart", description:  "Add to cart"),
        (title: "Grocerries", systemImage: "list.bullet.rectangle", description: nil),
        (title: "Utilities", systemImage: "wrench.and.screwdriver", description: nil),
        (title: "Thumb Scanner", systemImage: "hand.thumbsup", description: "Scan thumb for identification")
    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ForEach(0..<dataArray.count) { i in
                SingleChoiceView(text: dataArray[i].0, systemImage: dataArray[i].1, description: dataArray[i].2)
            }
        }
    }
}

struct SingleChoiceView: View {
    let text: String
    let systemImage: String
    let description: String?
    
    var body: some View {
        Label(text, systemImage: systemImage)
            .font(.headline)
            .foregroundColor(fontColor)
            .padding(.horizontal)
            .labelStyle(SpacedLabelStyle())
            .symbolRenderingMode(.hierarchical)
            .accessibilityLabel(description ?? text)
    }
}

struct SpacedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 25) {
            configuration.icon
                .imageScale(.large)
            configuration.title
        }
    }
}



struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 30, height: 50)
                .foregroundColor(fontColor)
                .background(darkBackground2)
                .clipShape(Circle())
            TextView(text: "Marios Knl", font: .title)
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
