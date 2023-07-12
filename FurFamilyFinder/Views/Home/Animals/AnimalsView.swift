//
//  AnimalsView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct AnimalsView: View {
    @State var selectedPicker: Picker?
    private let pickers: [Picker] = Picker.allCases
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .top) {
                SegmentedPicker(selection: $selectedPicker, items: pickers, content: { item in
                    Text(item?.title ?? "")
                        .font(.subheadline)
                        .bold()
                })
                Spacer()
                Button {
                    
                } label: {
                    Text("See all")
                        .bold()
                }
                .tint(.azule)
            }
            .padding(.trailing, 20)
            .padding(.leading, 20)
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(pickers) { picker in
                        AnimalsList(listType: picker)
                            .containerRelativeFrame(.horizontal)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollPosition(id: $selectedPicker)
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    AnimalsView(selectedPicker: Picker.recent)
}

enum Picker: Int, CaseIterable, Identifiable {
    var id: Self {
        self
    }
    
    case recent = 0
    case popular
    
    var title: LocalizedStringResource {
        switch self {
        case .recent:
            return "Recent"
        case .popular:
            return "Popular"
        }
    }
}
