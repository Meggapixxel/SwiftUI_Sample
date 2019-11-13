//
//  ColorsVStackView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct ColorsVStackView: View {
    var body: some View {
        VStack {
            Color.red.frame(width: 100, height: 100)
            Color.orange.frame(width: 100, height: 100)
            Color.green.frame(width: 100, height: 100)
        }
    }
}

struct ColorsVStackView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsVStackView()
    }
}
