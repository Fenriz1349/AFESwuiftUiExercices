//
//  ArtistSongView.swift
//  MyFavoriteSinger
//
//  Created by apprenant68 on 12/03/2024.
//

import SwiftUI

struct ArtistSongView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var  dismiss
    @State private var showAlert = false
    @State private var showingUpdateView = false
    
    var artist : Artist
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    Button{
                        showAlert = true
                    }label: {
                        Image(systemName: "minus.circle")
                            .foregroundStyle(.red)
                            .font(.system(size: 40))
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Supprimer le groupe"),
                            message: Text("Êtes-vous sûr de vouloir supprimer \(artist.name)? cette action est irréversible"),
                            primaryButton: .destructive(Text("Confirmer")) {
                                modelContext.delete(artist)
                                dismiss()
                            },
                            secondaryButton: .cancel()
                        )
                    }
                    Button{
                        showingUpdateView.toggle()
                    }label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundStyle(.yellow)
                            .font(.system(size: 40))
                    }
                    .sheet(isPresented: $showingUpdateView) {
                        UpdateView(artist: artist)
                        }
                }
                Spacer()
                VStack(alignment: .leading){
                    Text(artist.name)
                        .font(.system(size: 30))
                    Text("votre chanson préférée est :")
                    HStack{
                        Image(systemName: "music.mic")
                            .foregroundStyle(.yellow)
                            .font(.system(size: 30))
                        Text(artist.song)
                            .font(.system(size: 25))
                    }
                }
                Spacer()
            }
        }
    }
}

