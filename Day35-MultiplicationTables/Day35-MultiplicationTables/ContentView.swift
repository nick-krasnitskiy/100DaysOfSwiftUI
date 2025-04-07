//
//  ContentView.swift
//  Day35-MultiplicationTables
//
//  Created by Nick Krasnitskiy on 07.04.2025.
//

import SwiftUI

struct ContentView: View {
    let numberOfQuestions = [5, 10, 20]
    
    @State private var selectedNumberOfQuestions = 5
    @State private var multiplicationTable = 2
    @State private var answer: Int? = nil
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Which multiplication table do you want to practice?")
            Stepper("\(multiplicationTable) multiplication table ", value: $multiplicationTable, in: 2...12)
                .padding()
            
            Text("How many questions do you want to be asked?")
            
            Picker("Questions", selection: $selectedNumberOfQuestions)  {
                ForEach(numberOfQuestions, id: \.self) {
                    Text("\($0)")
                }
            }
            .pickerStyle(.segmented)
            
            Text("What is \(multiplicationTable) x 8?")
            
            TextField("Your answer", value: $answer, format: .number)
                .padding(.horizontal, 50)
            
            Button("Next") {
                // some code
            }
        }
    }
}

#Preview {
    ContentView()
}
