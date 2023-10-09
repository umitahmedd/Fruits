//
//  FruitList.swift
//  Fruits
//
//  Created by mac on 7.10.2023.
//

import SwiftUI

struct FruitList: View {
    var fruit:Fruit
    var body: some View {
        HStack(spacing:20){
            Image("\(fruit.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .background(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]]),
                        startPoint:.top, endPoint:.bottom
                    )
                )
                .cornerRadius(10)
            
            
            VStack(alignment: .leading){
                Text("\(fruit.title)")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer().frame(height: 5)

                Text("\(fruit.headline)")
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()

            
            Image(systemName: "chevron.right")
                .foregroundStyle(fruit.gradientColors[1])
        }
    }
}

#Preview {
    FruitList(fruit: fruitsData[0])
}
