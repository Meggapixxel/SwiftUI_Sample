//
//  MultilineView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct MultilineView: View {
    
    var body: some View {
        Text(
            "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition."
        ).fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .lineSpacing(10)
//            .lineLimit(5)
    }
    
}

struct MultilineView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineView()
    }
}
