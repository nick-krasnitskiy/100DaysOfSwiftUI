//
//  ContentView.swift
//  Day29-WordScramble
//
//  Created by Nick Krasnitskiy on 21.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle!
            
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded a file into a string!
            }
        }
    }
}

#Preview {
    ContentView()
}
