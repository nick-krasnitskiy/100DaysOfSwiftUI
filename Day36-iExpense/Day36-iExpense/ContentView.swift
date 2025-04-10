//
//  ContentView.swift
//  Day36-iExpense
//
//  Created by Nick Krasnitskiy on 10.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("You name is \(user.firstname) \(user.lastname).")
            TextField("First name", text: $user.firstname)
            TextField("Last name", text: $user.lastname)
        }
        .padding()
    }
}

@Observable
class User {
    var firstname = "Bilbo"
    var lastname = "Baggins"
}

#Preview {
    ContentView()
}
