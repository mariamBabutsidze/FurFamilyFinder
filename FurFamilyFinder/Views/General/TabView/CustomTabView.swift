//
//  CustomTabView.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 14.06.23.
//

import SwiftUI

struct CustomTabView<Content: View>: View {
    let tabs: [CustomTabItem]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TabView(selection: $selectedIndex) {
                    ForEach(tabs.indices, id: \.self) { index in
                        content(index)
                            .tag(index)
                    }
                }
            }
            VStack {
                Spacer()
                CustomBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
            }
        }
    }
}

#Preview {
    CustomTabView<HomeView>(tabs: [TabType.home.tabItem], selectedIndex: .constant(TabType.home.rawValue), content: { _ in
        HomeView()
    })
}

enum TabType: Int, CaseIterable {
    case home = 0
    case search
    case map
    case profile
    
    var tabItem: CustomTabItem {
        switch self {
        case .home:
            return .init(imageName: Symbol.house.title)
        case .search:
            return .init(imageName: Symbol.search.title)
        case .map:
            return .init(imageName: Symbol.map.title)
        case .profile:
            return .init(imageName: Symbol.profile.title)
        }
    }
}

