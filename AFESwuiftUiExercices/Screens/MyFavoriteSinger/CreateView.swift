//
//  CreateView.swift
//  MyFavoriteSinger
//
//  Created by apprenant68 on 12/03/2024.
//

import SwiftUI
import SwiftData

struct CreateView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var  dismiss
    @State  var name : String = ""
    @State  var song : String = ""

    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black)
                .edgesIgnoringSafeArea(.all)
            Form{
                TextField("Nom de l'artiste :", text: $name)
                TextField("Ton Son préféré", text: $song)
                Button("Ajouter") {
                    let newArtist = Artist(name: name, song: song)
                    modelContext.insert(newArtist)
                    dismiss()
                }
                .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    CreateView()
        .modelContainer(for: Artist.self)
}
