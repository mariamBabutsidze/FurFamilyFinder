//
//  AnimalView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct AnimalView: View {
    let animal: Animal
    
    var body: some View {
        VStack{
            Rectangle()
                .contentShape(Rectangle())
                .overlay {
                    Image(animal.imageName)
                        .resizable()
                        .scaledToFill()
                }
                .aspectRatio(2/1, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            AnimalInfo(animal: animal)
        }
    }
}

#Preview {
    AnimalView(animal: RecentAnimals.animals.first!)
}
