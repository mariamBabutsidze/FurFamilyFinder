//
//  CategoryView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct CategoryView: View {
    let name: ImageResource
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .cornerRadius(20)
    }
}

//#Preview {
//    CategoryView(name: .cat)
//}
