//
//  CustomPickView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 17.06.23.
//

import SwiftUI

struct CustomPickView: View {
    @Binding var selectedIndex: Int
    let type: Picker
    
    var body: some View {
        VStack {
            Button {
                if selectedIndex != type.rawValue {
                    selectedIndex = type.rawValue
                }
            } label: {
                HStack {
                    Text(type.title)
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
            }
            .tint(selectedIndex == type.rawValue ? .black : .gray)
            Rectangle()
                .frame(height: 3)
                .opacity(selectedIndex == type.rawValue ? 1 : 0)
        }.fixedSize()
    }
}

#Preview {
    CustomPickView(selectedIndex: .constant(Picker.recent.rawValue), type: .recent)
}
