//
//  MyFirstSwiftUiApp.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 04/03/2024.
//

import SwiftUI

struct MyFirstSwiftUiApp: View {
    var body: some View {
        VStack
        {
            Text("My First SwiftUI App")
                .bold()
            Spacer()
            HStack{
                Text("Sweet")
                    .foregroundStyle(.orange)
                Image(systemName:"heart.fill")
                    .foregroundStyle(.red)
            }
            Spacer()
        }
        .font(.system(size: 30))
    }
}

#Preview {
    MyFirstSwiftUiApp()
}
