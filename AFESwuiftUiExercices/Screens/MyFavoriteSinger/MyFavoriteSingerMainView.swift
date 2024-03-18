//
//  ContentView.swift
//  MyFavoriteSinger
//
//  Created by apprenant68 on 11/03/2024.
//

import SwiftUI
import SwiftData

struct MyFavoriteSingerMainView: View {
    @Environment(\.modelContext) var modelContext
    @Query  var artists: [Artist]
    @State private var showingCreateView = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            showingCreateView.toggle()
                        }label: {
                            Image(systemName: "plus.circle")
                                .foregroundStyle(.green)
                                .font(.system(size: 40))
                        }.sheet(isPresented: $showingCreateView) {
                            CreateView()
                            }
                    }
                    HStack{
                        Text("Mes Artistes")
                            .font(.system(size: 35))
                            .padding(.leading,20)
                        Spacer()
                    }
                    ForEach(artists) {artist in
                        NavigationLink{
                            ArtistSongView(artist: artist)
                            }label: {
                                HStack{
                                    Image(systemName: "mic.fill")
                                        .foregroundStyle(.yellow)
                                    Text(artist.name)
                                    Spacer()
                                    Image(systemName: "arrow.right")
                                        .foregroundStyle(.yellow)
                                    }
                            }.font(.system(size: 30))
                            .padding()
                            
                    }
                    Spacer()
                }
            }
        }.foregroundStyle(.white)
    }
}

#Preview {
    MyFavoriteSingerMainView()
        .modelContainer(for: Artist.self)
}
