//
//  InfoView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct InfoView: View {
    let type: Info
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
    InfoView(type: Info.name, title: "Totoro")
}

enum Info: String {
    case name = "pawprint"
    case location = "mappin.circle"
}
