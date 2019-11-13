//
//  TextsView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct TextsView: View {
    
    var body: some View {
        Text("Colored ").foregroundColor(.red)
        +
        Text("SwifUI ").foregroundColor(.green)
        +
        Text("Text").foregroundColor(.blue)
    }
    
}

struct TextsView_Previews: PreviewProvider {
    static var previews: some View {
        TextsView()
    }
}
