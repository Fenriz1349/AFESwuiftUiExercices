//
//  Gradient.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue.gradient)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Rectangle()
                    .fill(.orange)
                    .frame(width: 100,height: 100)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.red)
                    .frame(width: 100,height: 100)
                Circle()
                    .fill(.purple)
                    .frame(width: 100)
                Spacer()
            }
        }
    }
}

#Preview {
    Gradient()
}
