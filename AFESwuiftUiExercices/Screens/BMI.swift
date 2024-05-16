//
//  BMI.swift
//  AFESwuiftUiExercices
//
//  Created by Fen on 16/05/2024.
//

import SwiftUI

struct BMI: View {
    @State var weight : Double = 50.0
    @State var height : Double = 1.5
    private var bmi: BMIStruct {
            return BMIStruct(weight: weight, height: height)
        }
    var body: some View {
        GeometryReader {geometry in
            VStack{
                Text("BMI Calculator")
                    .frame(width: geometry.size.width,height: 100)
                    .background(Color.gray)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                Spacer()
                Text("What is your weigth in kg?")
                Slider(value: $weight,
                       in: 0.0...300.0,
                       step: 1)
                .padding(.horizontal,30)
                Text(String(format: "%.1f", weight))
                Spacer()
                Text("What is your height in cm?")
                Slider(value: $height,
                       in: 0.0...3.0,
                       step: 0.01)
                .padding(.horizontal,30)
                Text("\(Int(height*100))")
                Spacer()
                HStack {
                    Text(String(format: "%.1f", bmi.bmi()))
                        .frame(width: geometry.size.width/3,height: 75)
                        .background(.gray)
                        .foregroundStyle(.white)
                    Text(bmi.name())
                        .frame(width : geometry.size.width*2/3,height: 75)
                        .background(bmi.bckColor())
                        .foregroundStyle(bmi.bckColor() == .black ? .white : .black)
                }
                .fontWeight(.bold)
                .font(.system(size: 30))
            }
        }
    }
}
struct BMIStruct {
    var weight : Double
    var height : Double
    
    func bmi() -> Double{
        return weight/(Double(height)*Double(height))
    }
    
    func bckColor () -> Color{
        switch bmi() {
        case 0.0...18.5: return .gray
        case 18.5...25: return .green
        case 25.0...30.0: return .yellow
        case 30.0...35.0: return .red
        default: return .black
        }
    }
    
    func name() -> String{
        switch bmi() {
        case 0.0...18.5: return "Underweight"
        case 18.5...25: return "Normal"
        case 25.0...30.0: return "Overweight"
        case 30.0...35.0: return "Obesity"
        default: return "Morbid Obesity"
        }
    }
}
#Preview {
    BMI()
}
