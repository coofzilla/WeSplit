//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeric Hernandez on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20

    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [10, 15, 20, 25, 0]

    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople)
        let grandTotal = calculateGrandtotal()
        return grandTotal / peopleCount
    }

    var grandTotal: Double {
        calculateGrandtotal()
    }

    func calculateGrandtotal() -> Double {
        let peopleCount = Double(numberOfPeople)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount * tipSelection / 100
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100, id: \.self) { people in
                            Text("\(people) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("How much do you want to tip?") {
                    Picker("Tip Percentage", selection: $tipPercentage, content: {
                        ForEach(tipPercentages, id: \.self) { number in
                            Text("\(number)")
                        }
                    })
                    .pickerStyle(.segmented)
                }
                Section("Total Per Person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                Section("Grand Total") {
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("We Split")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
