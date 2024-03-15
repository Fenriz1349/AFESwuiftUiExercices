//
//  RandomDice.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 06/03/2024.
//

import SwiftUI

struct RandomDice: View {
     var listDice : [String] = [
        "dice-one-solid","dice-two-solid","dice-three-solid",
        "dice-four-solid","dice-five-solid","dice-six-solid"
    ]
    @State var dice = "dice-one-solid"
    var body: some View {
        VStack{
            Image(dice)
                .resizable()
                .frame(width: 150,height: 150)
                .padding(.top,200)
            Spacer()
            Button (action: {
                dice = listDice[Int.random(in: 0...5)]
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.orange)
                        .frame(width: 250,height: 75)
                    Text("Roll The Dice")
                        .font(.system(size: 25))
                        .foregroundStyle(.white)
                }
            })
            .padding(.bottom,50)
        }
        
    }
}

#Preview {
    RandomDice()
}
