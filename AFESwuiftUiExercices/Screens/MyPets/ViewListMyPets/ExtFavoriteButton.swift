//
//  ExtFavoriteButton.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtFavoriteButton: View {
    @ObservedObject var animalFavorite : Animal
    var body: some View {
        Button(action: {
            animalFavorite.favorite.toggle()
        }, label: {
            Image(systemName: animalFavorite.favorite ? "star.fill" : "star")
        })
            
    }
}

#Preview {
    ExtFavoriteButton(animalFavorite :animalPreview)
}
