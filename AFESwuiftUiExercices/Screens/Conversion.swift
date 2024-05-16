//
//  Conversion.swift
//  AFESwuiftUiExercices
//
//  Created by Fen on 16/05/2024.
//

import SwiftUI

struct Conversion: View {
    @State var kelvin: Temperature = Temperature(unit: .k, value: 0.0)
    @State var celsius: Temperature = Temperature(unit: .c, value: 0.0)
    @State var fahrenheit: Temperature = Temperature(unit: .f, value: 0.0)
    
    var body: some View {
        ZStack {
            HStack {
                TempColumn(temp: kelvin)
                TempColumn(temp: celsius)
                TempColumn(temp: fahrenheit)
            }
            .padding()
            
            Slider(value: $kelvin.value,
                   in: 0...400,
                   step: 1
            )
            .padding(.top, 400)
            .padding(.horizontal, 20)
            .onChange(of: kelvin.value) {
                            celsius.value = kelvin.value
                            fahrenheit.value = kelvin.value
                        }
        }
    }
}

struct TempColumn: View {
    var temp: Temperature
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(temp.bckColor())
                .ignoresSafeArea()
            
            VStack {
                Text(temp.unit.rawValue.capitalized)
                Text(String(format: "%.2f", temp.tempConversion()))
            }
            .foregroundColor(.white)
        }
    }
}

struct Temperature {
    let unit: Unit
    var value: Double
    
    enum Unit: String {
        case k = "kelvin"
        case c = "celsius"
        case f = "farenheit"
    }
    
    func bckColor() -> Color {
        switch unit {
        case .k:
            return .orange
        case .c:
            return .purple
        case .f:
            return .blue
        }
    }
    
    func tempConversion() -> Double {
        switch unit {
        case .k:
            return value
        case .c:
            return value - 273.15
        case .f:
            return (value - 273.15) * 9/5 + 32
        }
    }
}


#Preview {
    Conversion()
}
