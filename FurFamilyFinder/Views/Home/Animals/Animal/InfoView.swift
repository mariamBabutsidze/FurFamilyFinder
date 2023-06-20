//
//  InfoView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct InfoView: View {
    let type: Symbol
    let title: String
    
    var body: some View {
        HStack {
            Label(title, systemImage: type.rawValue)
                .font(.callout)
                .bold()
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

#Preview {
    InfoView(type: Symbol.paw, title: "Totoro")
}
