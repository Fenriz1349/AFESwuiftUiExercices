//
//  SelectASuit.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 06/03/2024.
//

enum Suit :String {
    case club = "Club"
    case spades = "Spades"
    case heart = "Heart"
    case diamond = "Diamond"
}
import SwiftUI

struct SelectASuit: View {
    @State var suitselected : String = "Select A Suit"
    var body: some View {
        VStack{
            HStack{
                Button  {
                    suitselected = "Club"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.black)
                            .frame(width:110,height: 50)
                        HStack{
                            Image(systemName: "suit.club.fill")
                            Text("Club")
                        }
                        .foregroundStyle(.white)
                    }
                    .padding(.leading,50)
                }
                Spacer()
                Button  {
                    suitselected = "Spades"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.black)
                            .frame(width:110,height: 50)
                        HStack{
                            Image(systemName: "suit.spade.fill")
                            Text("Spades")
                        }.foregroundStyle(.white)
                    }
                    .padding(.trailing,50)
                }
            }
            .padding(.top,200)
            Spacer()
            Text(suitselected)
                .foregroundStyle(.gray)
                .font(.system(size: 35))
            Spacer()
            HStack{
                Button  {
                    suitselected = "Heart"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.red)
                            .frame(width:110,height: 50)
                        HStack{
                            Image(systemName: "suit.heart.fill")
                            Text("Heart")
                        }
                        .foregroundStyle(.white)
                    }
                    .padding(.leading,50)
                }
                Spacer()
                Button  {
                    suitselected = "Diamond"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.red)
                            .frame(width:110,height: 50)
                        HStack{
                            Image(systemName: "suit.diamond.fill")
                            Text("Diamond")
                        }.foregroundStyle(.white)
                    }
                    .padding(.trailing,50)
                }
            }
            .padding(.bottom,200)
        }
    }
}

#Preview {
    SelectASuit()
}
