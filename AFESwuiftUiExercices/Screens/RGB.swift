//
//  RGB.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 15/03/2024.
//

import SwiftUI

struct RGB: View {
    let minRGB : Double = 0
    let maxRGB : Double = 255
    @State private var red : Double = 255
    @State private var blue : Double = 255
    @State private var green : Double = 255
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(red: red/255, green: green/255, blue: blue/255))
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack{
                    VStack{
                        Text("\(Int(minRGB))")
                        Slider(
                            value: $red,
                            in: 0...255,
                            step: 1
                        )
                        .rotationEffect(Angle(degrees: 90))
                        .padding(.vertical,40)
                        Text("\(Int(maxRGB))")
                    }
                    VStack{
                        Text("\(Int(minRGB))")
                        Slider(
                            value: $green,
                            in: 0...255,
                            step: 1
                        )
                        .rotationEffect(Angle(degrees: 90))
                        .padding(.vertical,40)
                        Text("\(Int(maxRGB))")
                    }
                    VStack{
                        Text("\(Int(minRGB))")
                        Slider(
                            value: $blue,
                            in: 0...255,
                            step: 1
                        )
                        .rotationEffect(Angle(degrees: 90))
                        .padding(.vertical,40)
                        Text("\(Int(maxRGB))")
                    }
                }
                .padding(.bottom,50)
                HStack{
                    Spacer()
                    Text("Red:\(Int(red))")
                    Spacer()
                    Text("Green:\(Int(green))")
                    Spacer()
                    Text("Blue:\(Int(blue))")
                    Spacer()
                }
                Spacer()
            }
        }
        .foregroundStyle(red < 20 && blue < 20 && green < 20 ? .white : .black)
    }
}

#Preview {
    RGB()
}
