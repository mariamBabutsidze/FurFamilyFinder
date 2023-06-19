//
//  AboutView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 19.06.23.
//

import SwiftUI

struct AboutView: View {
    let animal: Animal
    let item = GridItem(.flexible(minimum: 0, maximum: .infinity))
    
    var body: some View {
        HStack {
            Spacer(minLength: 20)
            VStack {
                HStack {
                    Text("About")
                        .font(.title2)
                        .bold()
                        .padding(.top, 20)
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack {
                    LazyVGrid(columns: [item, item], spacing: 10) {
                        if animal.groomed {
                            AboutField(info: .groomed)
                        }
                        if animal.trained {
                            AboutField(info: .vaccinated)
                        }
                        if animal.vaccinated {
                            AboutField(info: .trained)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                    
                }
            }
            .frame(maxWidth: .infinity)
            .background(.light)
            .cornerRadius(20)
            Spacer(minLength: 20)
        }
    }
}

#Preview {
    AboutView(animal: PopularAnimals.animals.first!)
}
