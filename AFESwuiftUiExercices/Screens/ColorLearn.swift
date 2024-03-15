//
//  ColorLearn.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 15/03/2024.
//

import SwiftUI

struct ColorLearn: View {
    @State var colorLearn : Color = Color(red: Double.random(in: 0...1),
                                                            green: Double.random(in: 0...1),
                                                            blue: Double.random(in: 0...1))
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Image(systemName: "pencil.tip")
                Text("Learning")
                Text("SwiftUI")
                    .foregroundStyle(colorLearn)
            }
            .font(.title)
            Spacer()
            Button(action: {
                colorLearn = Color(red: Double.random(in: 0...1),
                                   green: Double.random(in: 0...1),
                                   blue: Double.random(in: 0...1))
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 150,height: 75)
                    Text("Change Color")
                        .foregroundStyle(.white)
                }
                
            })
            Spacer()
        }
    }
}

#Preview {
    ColorLearn()
}
