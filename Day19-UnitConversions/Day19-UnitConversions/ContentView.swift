//
//  ContentView.swift
//  Day19-UnitConversions
//
//  Created by Nick Krasnitskiy on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
    let inputUnits = ["seconds", "minites", "hours", "days"]
    let outputUnits = ["seconds", "minites", "hours", "days"]
    @State private var selectedInput = ""
    @State private var selectedOutput = ""
    @State private var value = 0.0
    
    var result: Double {
        return 0.0
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Select an input unit and an output unit:") {
                    Picker("Input unit", selection: $selectedInput) {
                        ForEach(inputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Output unit", selection: $selectedOutput) {
                        ForEach(outputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Enter a value for conversion:") {
                    TextField("Valur", value: $value, format: .number)
                }
                
                Section("Result of conversion:") {
                    Text("\(result)")
                }
            }
            .navigationTitle("Unit Conversions")
        }
    }
}

#Preview {
    ContentView()
}
