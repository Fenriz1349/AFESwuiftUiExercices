//
//  ExtAnimalsChoice.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtAnimalsChoice: View {
//    @Binding var isModalPresented : Bool
//    @Binding var selectedList : [Animal]
    var body: some View {
        VStack {
            Text("Selectionnez vos animaux")
                .modifier(TitleFontStyle())
                .padding()
            ForEach(animals) {animal in
            ExtButtonAnimalChoice(animalChoice: animal)}
            Button("Valider") {
//                selectedList = animals.filter{$0.selected == true}
            }
            .padding()
        }
    }
}

#Preview {
    ExtAnimalsChoice(/*selectedList : .constant([Animal]=[])*/)
}
