//
//  HomeView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var searchIsActive = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                CategoriesView()
                    .padding()
                    .font(.largeTitle)
                    .bold()
                    .toolbar {
                        ToolbarItem {
                            Button(action: {}, label: {
                                Symbol.filter.image
                            })
                            .tint(.black)
                        }
                        ToolbarItem (placement: .navigation) {
                            Text("Hi, Mariam")
                                .font(.largeTitle)
                                .bold()
                        }
                    }
                AnimalsView(selectedIndex: 0)
            }
            .scrollIndicators(.hidden)
            .scrollClipDisabled()
        }
        .searchable(text: $searchText, isPresented: $searchIsActive)
    }
}

#Preview {
    HomeView()
}
