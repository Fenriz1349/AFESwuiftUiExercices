//
//  ExtButtonAnimalChoice.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtButtonAnimalChoice: View {
    @ObservedObject var animalChoice : Animal
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.yellow)
                .frame(width: 300,height: 50)
            HStack{
                Text(animalChoice.name)
                    .font(.system(size: 20))
                    .padding(.leading,60)
                Text(animalChoice.selected.description)
                Spacer()
                Button(action: {
                    animalChoice.selected.toggle()
                }, label: {
                    Text("Ajouter")
                        
                }).padding(.trailing,60)
            }
        }
        
    }
}

#Preview {
    ExtButtonAnimalChoice(animalChoice :animalPreview)
}
