//
//  FruitSiled.swift
//  Fruits
//
//  Created by mac on 6.10.2023.
//

import SwiftUI

struct FruitSlide: View {
  var fruit: Fruit
  @State var isAnimation = false
  // MARK: FRUIT SLIDE
  var body: some View {
    GeometryReader{ geo in
      let geoH = geo.size.height
      ZStack{
        VStack{
          // IMAGE
          Image("\(fruit.image)")
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimation ? 1 : 0.7)
            .padding(20)
            .frame(maxWidth: geoH/2)
          
          // TITLE
          Text("\(fruit.title)")
            .foregroundColor(.white)
            .fontWeight(.heavy)
            .font(.system(size: 30))
          
          // HEADLINE
          Text("\(fruit.headline)")
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .frame(maxWidth: 400)
            .padding(.horizontal, 16)
            .padding(.vertical, 5)
          
          // START BUTTON
          StartButton()
            .padding(.top)
          
        }
      }
      .onAppear{
        withAnimation(.easeOut(duration: 0.50)){
          isAnimation = true
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(
        LinearGradient(
          gradient:
            Gradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]]),
          startPoint:.top, endPoint:.bottom
        )
      )
      .cornerRadius(20)
    }
    
    
  }
}

#Preview {
  FruitSlide(fruit: fruitsData[0])
}
