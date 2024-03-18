//
//  ExtAnimal.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtAnimal: View {
    @ObservedObject var animal : Animal
    var body: some View {
        
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(.yellow)
                    .frame(width: 150, height: 140)
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350,height: 350)
            }
            HStack{
                Text(animal.name)
                ExtFavoriteButton(animalFavorite: animal)
            }
            .font(.system(size: 30))
        }
    }
}

#Preview {
    ExtAnimal(animal: animalPreview)
}
