//
//  ContentView.swift
//  Day36-iExpense
//
//  Created by Nick Krasnitskiy on 10.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Personal expenses") {
                    ForEach(expenses.items) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .expensesStyle(for: item)
                        }
                    }
                    .onDelete(perform: removeItems)
                }
                
                Section("Business expenses") {
                    ForEach(expenses.items) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            Spacer()
                            
                            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .expensesStyle(for: item)
                        }
                    }
                    .onDelete(perform: removeItems)

                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense = true
                    
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}

struct ExpensesStyle: ViewModifier {
    let expenseItem: ExpenseItem
    
    func body(content: Content) -> some View {
        switch expenseItem.amount {
        case 0..<10:
            content
                .foregroundStyle(.red)
        case 10..<100:
            content
                .foregroundStyle(.blue)
        default:
            content
                .foregroundStyle(.blue)
        }
    }
}

extension View {
    func expensesStyle(for expenseItem: ExpenseItem) -> some View {
        modifier(ExpensesStyle(expenseItem: expenseItem))
    }
}

#Preview {
    ContentView()
}
