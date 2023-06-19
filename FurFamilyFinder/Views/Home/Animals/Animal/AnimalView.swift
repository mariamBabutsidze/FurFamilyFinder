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
            GeometryReader { geo in
                Image(animal.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: 200)
                    .contentShape(Rectangle())
                    .clipped()
                    .cornerRadius(20)
                AnimalInfo(animal: animal)
                    .padding(.top, 210)
            }
        }
        .frame(height: 350)
    }
}

#Preview {
    AnimalView(animal: RecentAnimals.animals.first!)
}
