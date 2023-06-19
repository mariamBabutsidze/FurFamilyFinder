//
//  AnimalsList.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct AnimalsList: View {
    let listType: Picker
    private var animals: [Animal] {
        switch listType {
        case .recent:
            return RecentAnimals.animals
        case .popular:
            return PopularAnimals.animals
        }
    }
    
    var body: some View {
        VStack {
            ForEach(animals, id: \.self) { animal in
                AnimalView(animal: animal)
            }
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
    }
}

#Preview {
    AnimalsList(listType: .recent)
}
