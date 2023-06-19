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
            }
            HStack {
                Text(animal.title)
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.top, 10)
            InfoView(type: Info.name, title: animal.name)
                .padding(.top, 2)
            InfoView(type: Info.location, title: animal.location)
                .padding(.top, 1)
                .padding(.bottom, 20)
            Spacer()
        }.frame(height: 350)
    }
}

#Preview {
    AnimalView(animal: RecentAnimals.animals.first!)
}
