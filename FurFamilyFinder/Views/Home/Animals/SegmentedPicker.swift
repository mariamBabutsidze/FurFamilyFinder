//
//  SegmentedPicker.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI
import os

struct SegmentedPicker<Item: Hashable, Items: RandomAccessCollection, Content: View>: View where Items.Element == Item {
    @Binding private var selection: Item
    private let items: Items
    private let content: (Item) -> Content
    let logger = Logger(subsystem: "api.com.furFamilyFinder", category: "picker")
    
    init(selection: Binding<Item>, items: Items, @ViewBuilder content: @escaping (Item) -> Content) {
        _selection = selection
        self.items = items
        self.content = content
    }
    
    var body: some View {
        HStack {
            ForEach(items, id: \.self) { item in
                VStack {
                    Button {
                        withAnimation(.bouncy) {
                            selection = item
                        }
                        logger.log("\(String(describing: selection))")
                    } label: {
                        content(item)
                    }
                    .buttonStyle(.plain)
                    Rectangle()
                        .frame(height: 3)
                        .opacity(selection == item ? 1 : 0)
                }
                .foregroundStyle(selection == item ? .black : .gray)
                .fixedSize()
            }
        }
    }
}

#Preview {
    SegmentedPicker(selection: .constant(Picker.recent), items: Picker.allCases, content: { item in Text(item.title).font(.subheadline)
        .bold() })
}
