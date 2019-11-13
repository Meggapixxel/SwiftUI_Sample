//
//  ColorsZStackView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct ColorsZStackView: View {
    var body: some View {
        ZStack {
            Color.red.frame(width: 100, height: 100).offset(x: 10, y: 10)
            Color.orange.frame(width: 100, height: 100)
            Color.green.frame(width: 100, height: 100).offset(x: -10, y: -10)
        }
    }
}

struct ColorsZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsZStackView()
    }
}
