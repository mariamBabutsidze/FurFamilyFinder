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
            InfoView(type: Info.name, title: animal.name)
                .padding(.top, 2)
            InfoView(type: Info.location, title: animal.location)
                .padding(.top, 1)
                .padding(.bottom, 20)
            Spacer()
        }
    }
}

#Preview {
    AnimalInfo(animal: PopularAnimals.animals.first!)
}
