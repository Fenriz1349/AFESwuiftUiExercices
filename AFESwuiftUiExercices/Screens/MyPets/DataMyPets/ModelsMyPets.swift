//
//  Models.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import Foundation
import SwiftUI

//definition de la classe Animal
// name est le nom de l'animal
//image est le nom de l'image de l'animal dans les assets
// favorite represente l'état de favoris ou non de l'animal
// selected indique si l'animal est selectionner à la connexion pour l'utilisateur
class Animal : ObservableObject,Identifiable {
   @Published var name : String
   @Published var image : String
   @Published var favorite : Bool
   @Published var selected : Bool
    
    init(name: String, image: String, favorite: Bool = false, selected :Bool = false) {
        self.name = name
        self.image = image
        self.favorite = favorite
        self.selected = selected
    }
}

class AnimalViewModel : ObservableObject {
    @Published var animals : [Animal] = [
        Animal(name: "Cerf", image: "Cerf"),
        Animal(name: "Chat", image: "Chat"),
        Animal(name: "Chien", image: "Chien"),
        Animal(name: "Grenouille", image: "Grenouille"),
        Animal(name: "Lapin", image: "Lapin"),
        Animal(name: "Lion", image: "Lion"),
        Animal(name: "Panda", image: "Panda"),
        Animal(name: "Singe", image: "Singe"),
        Animal(name: "Vache", image: "Vache")
    ]
}
//struc pour uniformiser le style des titres
struct TitleFontStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30))
            .bold()
            .padding(.leading,20)
    }
}
//liste des animaux pour l'affichage
//
var animals : [Animal] = [
    Animal(name: "Cerf", image: "Cerf"),
    Animal(name: "Chat", image: "Chat"),
    Animal(name: "Chien", image: "Chien"),
    Animal(name: "Grenouille", image: "Grenouille"),
    Animal(name: "Lapin", image: "Lapin"),
    Animal(name: "Lion", image: "Lion"),
    Animal(name: "Panda", image: "Panda"),
    Animal(name: "Singe", image: "Singe"),
    Animal(name: "Vache", image: "Vache")
]

var animalPreview = Animal(name: "Cerf", image: "cerf", favorite: false, selected: true)
