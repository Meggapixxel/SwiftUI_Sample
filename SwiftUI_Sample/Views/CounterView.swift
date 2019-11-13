//
//  CounterView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct CounterView: View {
    
    @State var counter = 0
    
    var body: some View {
        VStack(spacing: 16) {
            Text("\(counter)")
            Button(action: { self.counter += 1 } ) {
                Text("Increment")
            }
            NavigationLink(destination: HeartView()) {
                Text("HeartView")
            }
        }
    }
    
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
