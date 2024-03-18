//
//  MainViewMyPets.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 18/03/2024.
//

import SwiftUI

struct MainViewMyPets: View {
    @State private var searchText = ""
    @State var selectedList : [Animal] = animals
        .filter{$0.selected == true}
    
    func searchResults() {
        if !searchText.isEmpty {
            selectedList = selectedList.filter{ $0.name.localizedCaseInsensitiveContains(searchText)}
        }else{
            selectedList = animals
        }
    }
    var body: some View {
        VStack{
            HStack{
                Text("Animals")
                    .modifier(TitleFontStyle())
                Spacer()
            }
            if selectedList.isEmpty {
                ExtEmptyList()
            }
            else {
                NavigationStack{
                    ScrollView{
                        VStack (){
                            ForEach(selectedList.indices.filter { $0 % 2 == 0 }, id: \.self) {index in
                                HStack {
                                    ExtButtonAnimal(animalButton: selectedList[index])
                                        .padding(.trailing,20)
                                    if index + 1 < animals.count {
                                        ExtButtonAnimal(animalButton: selectedList[index+1])
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }.searchable(text: $searchText,prompt: "animal ? ")
                    .onChange(of: searchText){
                        searchResults()
                    }
            }
        }
    }
}

#Preview {
    MainViewMyPets()
}
