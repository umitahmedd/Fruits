//
//  ContentView.swift
//  Fruits
//
//  Created by mac on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showFirstPage") var showFirstPage = true
    var body: some View {
        ZStack{
            if showFirstPage {
                FruitSlider()
            }
            else
            {
                Home()
            }
        }
    }
}

#Preview {
    ContentView()
}
