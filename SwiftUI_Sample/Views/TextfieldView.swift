//
//  TextfieldView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

// TODO
// Display rows for valid number input of TextField

struct TextfieldView: View {
    
    @State var textfieldInput = ""
//    @State var inputValueValid = false
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                Text("Input value: \(textfieldInput)")
                TextField("Enter number of rows", text: $textfieldInput)
            }
            ForEach(0..<(Int(textfieldInput) ?? 0) ) {
                Text("\($0)")
            }
        }
    }
    
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView()
    }
}
