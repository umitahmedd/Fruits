//
//  FruitSlider.swift
//  Fruits
//
//  Created by mac on 6.10.2023.
//

import SwiftUI

struct FruitSlider: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        HStack{
            TabView{
                ForEach(fruits.prefix(5)) { fruit in
                    FruitSlide(fruit: fruit)
                        .padding(.horizontal, 10)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding()
        }
    }
}

#Preview {
    FruitSlider()
}
