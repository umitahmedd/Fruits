//
//  FruitOverview.swift
//  Fruits
//
//  Created by mac on 7.10.2023.
//

import SwiftUI

struct FruitOverview: View {
    var fruit:Fruit
    var body: some View {
        Text(fruit.title)
    }
}

#Preview {
    FruitOverview(fruit: fruitsData[0])
}
