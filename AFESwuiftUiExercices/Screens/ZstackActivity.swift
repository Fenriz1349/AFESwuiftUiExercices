//
//  ZstackActivity.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 05/03/2024.
//

import SwiftUI

struct ZstackActivity: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.red)
            Rectangle()
                .fill(.green)
                .frame(width: 200,height: 150)
            Circle()
                .fill(.blue)
                .frame(width: 100)
            Text("Santana")
                .bold()
        }
    }
}

#Preview {
    ZstackActivity()
}
