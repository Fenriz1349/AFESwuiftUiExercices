//
//  ExtButtonAnimal.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtButtonAnimal: View {
    @ObservedObject var animalButton : Animal
    var body: some View {
            VStack{
                NavigationLink(destination: ExtAnimal(animal: animalButton)) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.yellow)
                            .frame(width: 150, height: 140)
                        Image(animalButton.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 170, alignment: .bottom)
                            .offset(y:-10)
                    }
                }
                HStack{
                    Text(animalButton.name)
                    ExtFavoriteButton(animalFavorite: animalButton)                }
                .font(.system(size: 20))
                .padding(10)
            }
    }
}
#Preview {
    ExtButtonAnimal(animalButton: animalPreview)
}
