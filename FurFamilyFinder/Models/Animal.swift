//
//  Animal.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import Foundation
import DeveloperToolsSupport

struct Animal: Hashable {
    let name: String
    let title: String
    let category: Category
    let location: String
    let sex: AnimalSex
    let vaccinated: Bool
    let age: Int
    let trained: Bool
    let groomed: Bool
    let imageName: ImageResource
}

enum AnimalSex: Hashable {
    case male
    case female
}

enum RecentAnimals {
    static var animals: [Animal] {
        [Animal(name: "Totoro", title: "British longhair cat", category: .cat, location: "Chavchavadze str. 7", sex: .female, vaccinated: true, age: 2, trained: true, groomed: true, imageName: .british),
         Animal(name: "Loki", title: "German Shephard", category: .dog, location: "Nutsubidze str. 20", sex: .male, vaccinated: false, age: 1, trained: false, groomed: true, imageName: .shephard),
         Animal(name: "Mark", title: "Frenchie", category: .dog, location: "Chavchavadze 7", sex: .female, vaccinated: true, age: 3, trained: true, groomed: true, imageName: .frenchie)]
    }
}

enum PopularAnimals {
    static var animals: [Animal] {
        [Animal(name: "Mimi", title: "Cocker Spaniel", category: .dog, location: "Vazha Pshavela str. 7", sex: .female, vaccinated: false, age: 1, trained: false, groomed: true, imageName: .cocker),
         Animal(name: "Buby", title: "Sea turtle", category: .turtle, location: "Nutsubidze str. 20", sex: .male, vaccinated: false, age: 2, trained: false, groomed: true, imageName: .bengal),
         Animal(name: "Neko", title: "Bengal cat", category: .cat, location: "Chavchavadze 7", sex: .female, vaccinated: true, age: 3, trained: true, groomed: true, imageName: .bengal)]
    }
}
