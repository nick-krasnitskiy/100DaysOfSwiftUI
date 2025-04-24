//
//  HabitView.swift
//  HabitTracker
//
//  Created by Nick Krasnitskiy on 23.04.2025.
//

import SwiftUI

struct HabitView: View {
    @State private var title = ""
    @State private var description = ""
    
    var habits: Habits
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                TextField("Decription", text: $description)
                
            }
            .navigationTitle("Add habit")
            .toolbar {
                Button("Save") {
                    let item = Habit(title: title, description: description)
                    habits.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    HabitView(habits: Habits())
}
