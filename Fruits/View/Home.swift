//
//  Home.swift
//  Fruits
//
//  Created by mac on 6.10.2023.
//

import SwiftUI

struct Home: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(fruits){ fruit in
                        Divider()
                        NavigationLink(destination: FruitOverview(fruit: fruit)){
                            FruitList(fruit: fruit)
                                .padding(.vertical, 5)
                        }
                    }
                }
                .navigationTitle("Fruits")
                .padding()
            }
        }
    }
}

#Preview {
    Home()
}
