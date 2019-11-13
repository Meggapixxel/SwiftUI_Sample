//
//  MountainView.swift
//  SwiftUI_Sample
//
//  Created by Vadim Zhydenko on 13.11.2019.
//

import SwiftUI

struct MountainView: View {
    var body: some View {
        Image("mountains")
            .frame(width: 300, height: 300)
            .mask(Circle())
    }
}

struct MountainView_Previews: PreviewProvider {
    static var previews: some View {
        MountainView()
    }
}
