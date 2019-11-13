//
//  ColorsView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        Color.black.frame(width: 100, height: 100)
            .padding(10)
            .background(Color.red)
            .padding(10)
            .background(Color.green)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
