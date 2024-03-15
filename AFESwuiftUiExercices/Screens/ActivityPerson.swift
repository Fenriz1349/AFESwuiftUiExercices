//
//  ActivityPerson.swift
//  AFESwuiftUiExercices
//
//  Created by apprenant68 on 04/03/2024.
//

import SwiftUI

struct ActivityPerson: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.circle")
                    .foregroundStyle(.orange)
                    .font(.system(size: 100))
                VStack(alignment: .leading){
                    Text("Danilo Santana")
                        .font(.system(size: 35))
                        .bold()
                    Text("Brazil")
                        .font(.system(size: 25))
                        .foregroundStyle(.gray)
                    Text("Racing Driver")
                        .bold()
                }
                Spacer()
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .padding(15)
        }
    }
}

#Preview {
    ActivityPerson()
}
