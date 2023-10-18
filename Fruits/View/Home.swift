//
//  Home.swift
//  Fruits
//
//  Created by mac on 6.10.2023.
//

import SwiftUI

struct Home: View {
    @AppStorage("showFirstPage") var showFirstPage:Bool = true
   @State var showSettingsSheet:Bool = false
    var fruits: [Fruit] = fruitsData
    @State var show = false
    var body: some View {
        NavigationView{
            ScrollView{
               
               // MARK: FRUIT LIST
                VStack{
                    ForEach(fruits){ fruit in
                        Divider()
                        NavigationLink(destination: FruitOverview(fruit: fruit)){
                            FruitList(fruit: fruit)
                                .padding(.vertical, 5)
                        }
                    }
                }
                .opacity(show ? 1 : 0.2)
                .navigationTitle("Fruits")
                .padding()
                .toolbar{
                   
                   // SETTINGS BUTTON
                   ToolbarItem(placement: .topBarTrailing) {
                      Button{
                         showSettingsSheet = true
                      }label: {
                         Image(systemName: "slider.horizontal.3")
                            .fontWeight(.medium)
                      }
                   }
                }
                .sheet(isPresented: $showSettingsSheet, content: {
                   SettingsSheet()
                })
            }
            .onAppear{
                withAnimation(.easeOut(duration: 1 )){
                    show = true
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    Home()
}
