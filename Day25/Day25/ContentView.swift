//
//  ContentView.swift
//  Day25
//
//  Created by Nick Krasnitskiy on 09.03.2025.
//

import SwiftUI

struct ContentView: View {
    let agents = ["Cyril", "Lana", "Pam", "Sterling"]
    
    var body: some View {
        VStack {
            ForEach(agents, id: \.self) {
                Text($0)
            }
        }
    }
}

#Preview {
    ContentView()
}
