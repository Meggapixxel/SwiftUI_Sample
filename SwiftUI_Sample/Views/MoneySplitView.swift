//
//  TextfieldComplexView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct MoneySplitView: View {
    
    @State var checkAmount = ""
    @State var numberOfPeople = 0
    @State var tipPercentage = 0

    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        guard let billAmount = Double(checkAmount) else { return 0 }
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let tips = billAmount * tipSelection / 100
        let totalAmount = tips + billAmount
        return totalAmount / peopleCount
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("$")
                        TextField("Amount", text: $checkAmount)
                            .keyboardType(.decimalPad)
                    }
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0)")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percantage", selection: $tipPercentage) {
                        ForEach(0..<self.tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Result")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }.navigationBarTitle("Money split", displayMode: .inline)
        }
    }
    
}

struct TextfieldComplexView_Previews: PreviewProvider {
    static var previews: some View {
        MoneySplitView()
    }
}
