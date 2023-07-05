//
//  AnimalInfo.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 19.06.23.
//

import SwiftUI

struct AnimalInfo: View {
    let animal: Animal
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Text(animal.title)
                        .tint(.black)
                        .font(.title)
                        .bold()
                    Spacer()
                    LikeButton()
                }
                Spacer()
            }
            InfoView(type: Symbol.paw, title: animal.name)
                .padding(.top, 2)
            InfoView(type: Symbol.location, title: animal.location)
                .padding(.top, 1)
                .padding(.bottom, 20)
        }
    }
}

#Preview {
    AnimalInfo(animal: PopularAnimals.animals.first!)
}
