//
//  UpdateView.swift
//  MyFavoriteSinger
//
//  Created by apprenant68 on 12/03/2024.
//

import SwiftUI

struct UpdateView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var  dismiss
    var artist : Artist
    @State private var name : String
    @State private var song : String
    
    init(artist: Artist) {
            self.artist = artist
            self._name = State(initialValue: artist.name)
            self._song = State(initialValue: artist.song)
        }

    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black)
                .edgesIgnoringSafeArea(.all)
            Form{
                TextField("Nom de l'artiste :", text: $name)
                TextField("Ton Son préféré", text: $song)
                Button("Sauvegarder") {
                    artist.name = name
                    artist.song = song
                    do {
                        try modelContext.save()
                    }catch {
                        print("Erreur lors de la sauvegarde : \(error)")
                    }
                    dismiss()
                }
                .foregroundStyle(.yellow)
            }
        }
    }
}

