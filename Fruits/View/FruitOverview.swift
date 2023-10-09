//
//  FruitOverview.swift
//  Fruits
//
//  Created by mac on 7.10.2023.
//

import SwiftUI

extension View {
    func boardAnimation(delay: CGFloat, yOffset: CGFloat = 0, opacity: CGFloat, value: Bool) -> some View {
        self
            .offset(y: yOffset)
            .opacity(opacity)
            .animation(
                Animation.easeOut(duration: 0.7).delay(Double(delay)),
                value: value
            )
    }
}
struct FruitOverview: View {
    var fruit:Fruit
    @State private var isAnimation = false
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .leading){
                        
                        // MARK: HEAD
                        ZStack{
                            LinearGradient(
                                gradient:
                                    Gradient(
                                        colors: [fruit.gradientColors[0], fruit.gradientColors[1]]),
                                startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                            
                            Image(fruit.image)
                                .resizable()
                                .scaledToFit()
                                .padding(.vertical, 20)
                            
                            
                        }
                        .frame(height: 440)
                        .offset(x: isAnimation ? 0 : 300)
                        
                        // MARK: BODY
                        VStack(alignment: .leading, spacing: 20){
                            
                            // TITLE
                            Text("\(fruit.title)")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundStyle(
                                    LinearGradient(
                                        gradient:
                                            Gradient(
                                                colors: [fruit.gradientColors[1], fruit.gradientColors[0]]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .boardAnimation(
                                    delay: 0.5,
                                    yOffset: isAnimation ? 0 : 100,
                                    opacity: isAnimation ? 1 : 0,
                                    value: isAnimation
                                )
                            
                            // HEADLINE
                            Text("\(fruit.headline)")
                                .fontWeight(.bold)
                                .boardAnimation(
                                    delay: 1,
                                    yOffset: isAnimation ? 0 : 100,
                                    opacity: isAnimation ? 1 : 0,
                                    value: isAnimation
                                )
                            
                            // NUTRIENTS
                            FruitNutrients(fruit: fruit)
                                .boardAnimation(
                                    delay: 1.5,
                                    yOffset: isAnimation ? 0 : 100,
                                    opacity: isAnimation ? 1 : 0,
                                    value: isAnimation
                                )
                            
                            // DESCRIPTION
                            VStack(alignment: .leading){
                                Text("Learn more about \(fruit.title)")
                                    .textCase(.uppercase)
                                    .font(.system(size: 16, weight: .bold))
                                
                                    .foregroundStyle(
                                        LinearGradient(
                                            gradient:
                                                Gradient(
                                                    colors: [fruit.gradientColors[1], fruit.gradientColors[0]]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                
                                Text("\(fruit.description)")
                            }
                            .boardAnimation(
                                delay: 2,
                                yOffset: isAnimation ? 0 : 100,
                                opacity: isAnimation ? 1 : 0,
                                value: isAnimation
                            )
                            
                            SourceLink()
                        }
                        .padding()
                    }
                }
                .edgesIgnoringSafeArea(.top)
            }
            .onAppear{
                withAnimation(.easeOut(duration: 1)){
                    isAnimation = true
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FruitOverview(fruit: fruitsData[0])
}
