//
//  ContentView.swift
//  Day39-Moonshot
//
//  Created by Nick Krasnitskiy on 15.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

struct CustomText: View {
    let text: String
    
    var body: some View {
       Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

#Preview {
    ContentView()
}
