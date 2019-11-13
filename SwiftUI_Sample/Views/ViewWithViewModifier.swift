//
//  ViewWithViewModifier.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct GreenLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.green)
    }
}

struct ViewWithViewModifier: View {
    
    var body: some View {
        Text("SwifUI ").modifier(GreenLabel())
    }
    
}

struct ViewWithViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithViewModifier()
    }
}
