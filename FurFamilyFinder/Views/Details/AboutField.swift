//
//  AboutField.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 19.06.23.
//

import SwiftUI

struct AboutField: View {
    let info: Field
    
    var body: some View {
        HStack {
            Label(
                title: { Text(info.title) },
                icon: {
                    Image(systemName: info.rawValue)
                        .foregroundColor(info.color)
                }
            )
            .font(.callout)
            .bold()
            .foregroundColor(.black)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
        .background(.white)
        .fixedSize()
        .cornerRadius(30)
    }
}

#Preview {
    AboutField(info: .trained)
}

enum Field: String {
    case trained = "trophy"
    case vaccinated = "syringe"
    case groomed = "scissors"
    
    var title: String {
        switch self {
        case .trained:
            return "Trained"
        case .vaccinated:
            return "Vaccinated"
        case .groomed:
            return "Groomed"
        }
    }
    
    var color: Color {
        switch self {
        case .trained:
            return .green
        case .vaccinated:
            return .purple
        case .groomed:
            return .blue
        }
    }
}
