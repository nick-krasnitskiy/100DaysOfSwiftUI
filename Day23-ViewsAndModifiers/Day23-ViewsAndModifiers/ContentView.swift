//
//  ContentView.swift
//  Day23-ViewsAndModifiers
//
//  Created by Nick Krasnitskiy on 07.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 300)
            .watermarked(with: "Hacking with Swift")
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


#Preview {
    ContentView()
}
