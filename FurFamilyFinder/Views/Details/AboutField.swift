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
    case age(year: Int, month: Int)
    
    var title: LocalizedStringResource {
        switch self {
        case .trained:
            return "Trained"
        case .vaccinated:
            return "Vaccinated"
        case .groomed:
            return "Groomed"
        case let .age(year, month):
            return "\(year) Year \(month) Month"
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
            return Symbol.trophy.title
        case .vaccinated:
            return Symbol.syringe.title
        case .groomed:
            return Symbol.scissors.title
        case .age:
            return ""
        }
    }
}
