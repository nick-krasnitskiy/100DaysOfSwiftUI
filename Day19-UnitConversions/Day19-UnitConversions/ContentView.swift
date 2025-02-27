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
    
    @FocusState private var isFocused: Bool
    
    var result: Double {
        var input = 0.0
        var output = 0.0
        
        switch selectedInput {
        case "seconds":
            input = value
        case "minites":
            input = value * 60
        case "hours":
            input = value * 3600
        default:
            input = value * 86400
        }
    
        switch selectedOutput {
        case "seconds":
            output = input
        case "minites":
            output = input / 60
        case "hours":
            output = input / 3600
        default:
            output = input / 86400
        }
        
        return output
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
                    TextField("Value", value: $value, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isFocused)
                }
                
                Section("Result of conversion:") {
                    Text("\(Int(result))")
                }
            }
            .toolbar {
                if isFocused {
                    Button("Done") {
                        isFocused = false
                    }
                }
            }
            .navigationTitle("Unit Conversions")
            
        }
    }
}

#Preview {
    ContentView()
}
