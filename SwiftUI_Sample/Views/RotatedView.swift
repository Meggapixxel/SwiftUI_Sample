//
//  RotatedView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct RotatedView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Text(
                "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition."
            ).rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
            Text("Rotated").rotationEffect(.degrees(45))
        }
    }
    
}

struct RotatedView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedView()
    }
}
