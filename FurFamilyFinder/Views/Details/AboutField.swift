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
                    if !info.imageName.isEmpty {
                        Image(systemName: info.imageName)
                            .foregroundColor(info.color)
                    }
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

enum Field {
    case trained
    case vaccinated
    case groomed
    case age(number: Int)
    
    var title: LocalizedStringKey {
        switch self {
        case .trained:
            return "Trained"
        case .vaccinated:
            return "Vaccinated"
        case .groomed:
            return "Groomed"
        case .age(let number):
            return "\(number) Year"
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
        case .age:
            return .white
        }
    }
    
    var imageName: String {
        switch self {
        case .trained:
            return "trophy"
        case .vaccinated:
            return "syringe"
        case .groomed:
            return "scissors"
        case .age:
            return ""
        }
    }
}
