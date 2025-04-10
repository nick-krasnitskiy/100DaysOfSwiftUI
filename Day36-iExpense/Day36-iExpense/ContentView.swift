//
//  ContentView.swift
//  Day36-iExpense
//
//  Created by Nick Krasnitskiy on 10.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var user = User(firstName: "Nick", lastName: "Krasnitskiy")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct User: Codable {
    let firstName: String
    let lastName: String
}

#Preview {
    ContentView()
}
