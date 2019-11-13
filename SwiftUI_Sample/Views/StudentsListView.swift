//
//  StudentsListView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct StudentsListView: View {
    
    struct Student: Identifiable {
        
        var id: String
        
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(
                    [Student(id: "0"), Student(id: "1"), Student(id: "2")]
                ) { item in
                    NavigationLink(destination: ColorsView()) {
                        Text(item.id)
                    }
                }
            }.navigationBarTitle("Students")
        }
    }
}

struct StudentsListView_Previews: PreviewProvider {
    static var previews: some View {
        StudentsListView()
    }
}
