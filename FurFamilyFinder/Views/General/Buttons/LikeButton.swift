//
//  LikeButton.swift
//  FurFamilyFinder
//
//  Created by Mariam Babutsidze on 19.06.23.
//

import SwiftUI

struct LikeButton: View {
    @State private var liked = false
    
    var body: some View {
        Button(action: {
            liked.toggle()
        }) {
            Image(systemName: liked ? "heart.fill" : "heart")
                .foregroundColor(.red)
        }
    }
}


#Preview {
    LikeButton()
}
