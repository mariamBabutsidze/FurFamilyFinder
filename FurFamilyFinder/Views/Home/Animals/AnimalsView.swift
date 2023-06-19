//
//  AnimalsView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct AnimalsView: View {
    @State var selectedIndex: Int
    
    var body: some View {
        VStack {
            HStack {
                CustomPickView(selectedIndex: $selectedIndex, type: .recent)
                CustomPickView(selectedIndex: $selectedIndex, type: .popular)
                    .padding()
                Spacer()
                Button {
                    
                } label: {
                    Text("See all")
                        .bold()
                }
                .tint(.azule)
            }
            .padding(.trailing, 20)
            .padding(.leading, 20)
            AnimalsList(listType: Picker(rawValue: selectedIndex) ?? Picker.recent)
        }
    }
}

#Preview {
    AnimalsView(selectedIndex: Picker.recent.rawValue)
}

enum Picker: Int, CaseIterable {
    case recent = 0
    case popular
    
    var title: String {
        switch self {
        case .recent:
            return "Recent"
        case .popular:
            return "Popular"
        }
    }
}
