//
//  DetailView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 19.06.23.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    let animal: Animal
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical) {
                VStack {
                    Image(animal.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: geo.size.width)
                        .frame(height: 300)
                    AnimalInfo(animal: animal)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    AboutView(animal: animal)
                        .padding(.bottom, 20)
                    HStack {
                        Spacer(minLength: 20)
                        Button {
                            
                        } label: {
                            Text("Adopt")
                                .font(.title)
                                .bold()
                        }
                        .buttonStyle(.automatic)
                        .frame(height: 70)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .cornerRadius(70)
                        .tint(.white)
                        Spacer(minLength: 20)
                    }
                    .padding(.bottom, 20)
                }
            }
            .scrollIndicators(.hidden)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
                .foregroundColor(.black)
        })
        .navigationTitle("Details")
    }
}

#Preview {
    DetailView(animal: PopularAnimals.animals.first!)
}
