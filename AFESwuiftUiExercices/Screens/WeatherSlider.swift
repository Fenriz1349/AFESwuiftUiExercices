//
//  eatherSlider.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 06/03/2024.
//


import SwiftUI

struct WeatherSlider: View {
    @State private var temp = 0.0

    var body: some View {
        ZStack{
            Rectangle()
                .fill(temp < 10.0 ? .blue : temp < 25.0 ? .orange : .red)
                .ignoresSafeArea()
            VStack{
                Text("\(Int(temp)) °C")
                    .foregroundStyle(.black)
                    .font(.system(size: 25))
                Text(temp < 10.0 ? "ça caille !!! 🥶" : temp < 15.0 ? "c'est chill 😎" : "Je brule !!! 🥵")
                    .foregroundStyle(.black)
                    .font(.system(size: 30))
                Slider(
                        value: $temp,
                        in: 0...50,
                        step: 1
                    )
                .padding(.horizontal,50)
            }
            
        }
    }
}

#Preview {
    WeatherSlider()
}
