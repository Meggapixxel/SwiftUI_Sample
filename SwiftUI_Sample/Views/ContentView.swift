//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Vadim Zhydenko on 12.11.2019.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("Stay Hungry. Stay Foolish.")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.green)
                NavigationLink(destination: MultilineView()) {
                    Text("MultilineView")
                }
                NavigationLink(destination: CounterView()) {
                    Text("CounterView")
                }
                NavigationLink(destination: HeartView()) {
                    Text("HeartView")
                }
                NavigationLink(destination: RotatedView()) {
                    Text("RotatedView")
                }
                StudentsListView()
                
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
