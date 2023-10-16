//
//  ContentView.swift
//  Challenge1
//
//  Created by Nick Krasnitskiy on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    let units = ["meters", "kilometers", "feet", "yard", "miles"]
    @State private var inputUnit = "meters"
    @State private var outputUnit = "feet"
    @State private var value = 0.0
    
    @FocusState private var valueFocuded: Bool
    
    var result: Double {
        var convertedMeters = 0.0
        var result = 0.0
        
        switch inputUnit {
        case "meters":
            convertedMeters = value
        case "kilometers":
            convertedMeters = value * 1000
        case "feet":
            convertedMeters = value * 0.3048
        case "yard":
            convertedMeters = value * 0.9144
        case "miles":
            convertedMeters = value * 1609
        default:
            convertedMeters = 0.0
        }
        
        switch outputUnit {
        case "meters":
            result = convertedMeters
        case "kilometers":
            result = convertedMeters / 1000
        case "feet":
            result = convertedMeters / 0.3048
        case "yard":
            result = convertedMeters / 0.9144
        case "miles":
            result = convertedMeters / 1609
        default:
            result = 0.0
        }
        
        return result
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Choose an input unit") {
                    Picker("Input unit", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Choose an output unit") {
                    Picker("Output unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Enter a value") {
                    TextField("Value", value: $value, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($valueFocuded)
                }
                
                Section("Result of conversion") {
                    Text(result, format: .number)
                }
            }
            .navigationTitle("Unit conversions")
            .toolbar {
                if valueFocuded {
                    Button("Done") {
                        valueFocuded = false
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
