//
//  FruitNutrients.swift
//  Fruits
//
//  Created by mac on 7.10.2023.
//

import SwiftUI

struct FruitNutrients: View {
    var nutrietns = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    var fruit: Fruit
    var body: some View {
        GroupBox(){
            DisclosureGroup(" Nutritional value per 100g"){
                ForEach(0..<nutrietns.count, id:\.self){ item in
                    Divider().padding(.vertical, 4)
                  
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text("\(nutrietns[item])")
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(size: 16, weight: .bold))
                        
                        Spacer(minLength: 25)
                        
                        Text("\(fruit.nutrition[item])")
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    FruitNutrients(fruit: fruitsData[0])
}
