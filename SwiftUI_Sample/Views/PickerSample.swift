//
//  PickerSample.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

// TODO
// Can't display "selectedStudent" in "Text"

struct PickerSample: View {
    
    let students = ["Harry", "Paul", "Peter"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        VStack {
            Text(selectedStudent)
            Picker("Select student", selection: $selectedStudent) {
                ForEach(0..<students.count) {
                    Text(self.students[$0])
                }
            }
        }
    }
    
}

struct PickerSample_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
    }
}
