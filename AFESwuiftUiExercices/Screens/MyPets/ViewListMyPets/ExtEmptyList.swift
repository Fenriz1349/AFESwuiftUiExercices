//
//  ExtEmptyList.swift
//  MyPet
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ExtEmptyList: View {
    var body: some View {
        NavigationStack{
            Image("sorry")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height: 300)
            Text("Pas d'animaux")
                .modifier(TitleFontStyle())
            Text("Ajoutez des animaux à votre collection")
                .foregroundStyle(.gray)
                .padding(.bottom,20)
            NavigationLink(destination: ExtAnimalsChoice()){
                    Image(systemName: "plus.circle.fill")
                    .foregroundStyle(.yellow)
                    .font(.system(size: 50))
            }
        }
    }
}

#Preview {
    ExtEmptyList()
}
