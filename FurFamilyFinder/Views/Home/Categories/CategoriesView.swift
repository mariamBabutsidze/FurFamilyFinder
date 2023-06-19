//
//  CategoriesView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(Category.allCases, id: \.rawValue) { category in
                    CategoryView(name: category.name)
                }
            }
        }
        .scrollIndicators(.hidden)
        .scrollClipDisabled()
    }
}

#Preview {
    CategoriesView()
}

enum Category: Int, CaseIterable {
    case cat = 0
    case dog
    case bunny
    case turtle
    
    var name: ImageResource {
        switch self {
        case .cat:
            return .cat
        case .dog:
            return .dog
        case .bunny:
            return .bunny
        case .turtle:
            return .turtle
        }
    }
}
