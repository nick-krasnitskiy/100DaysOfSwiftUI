//
//  ContentView.swift
//  Day39-Moonshot
//
//  Created by Nick Krasnitskiy on 15.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
