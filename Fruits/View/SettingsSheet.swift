//
//  SettingsSheet.swift
//  Fruits
//
//  Created by mac on 9.10.2023.
//

import SwiftUI


struct SettingsSheet: View {
   @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   var settingsRows: [SettingsRowView] = [
      SettingsRowView(name: "Developer", content: "Ümit Ahmed"),
      SettingsRowView(name: "Designer", content: "Ümit Ahmed"),
      SettingsRowView(name: "Compatibility", content: "IOS 16.2"),
      SettingsRowView(name: "Website", content: "umitahmed.com", url: "https://umitahmed.com"),
      SettingsRowView(name: "Version", content: "1.1.0"),
   ]
   var body: some View {
      NavigationView{
         ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 20){
              
            // MARK: HEAD
               GroupBox {
                  Divider( ).padding(.vertical, 4)
                  HStack(spacing: 20){
                     Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .cornerRadius(10)
                     
                     
                     Text("Most fruits are naturally low and bad, sodium and calories. None of cholesterol fruits are source of many essential, nutrients, including potassium, the entry, fiber, vitamins, and much more")
                        .font(.footnote)
                  }
               } label: {
                  SettingsLabelView(labelText: "Fruits", labelIcon: "info.circle")
               }
               
              // MARK: APPLICATION INFO
               GroupBox {
                  ForEach(settingsRows, id:\.name){ row in
                     Divider( ).padding(.vertical, 4)
                     SettingsRowView(name: row.name, content: row.content, url: row.url)
                  }
                  
               } label: {
                  SettingsLabelView(labelText: "Application", labelIcon: "apps.iphone")
               }
            }
            .toolbar{
              // CLOSE BUTTON
               ToolbarItem(placement: .topBarTrailing) {
                  Button{
                     presentationMode.wrappedValue.dismiss()
                  }label: {
                     Image(systemName: "xmark")
                        .fontWeight(.medium)
                  }
               }
            }
            .navigationTitle("Settings")
            .padding()
         }
      }

   }
}

#Preview {
   SettingsSheet()
}
