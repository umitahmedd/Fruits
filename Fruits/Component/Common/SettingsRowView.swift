//
//  SettingsRowView.swift
//  Fruits
//
//  Created by mac on 9.10.2023.
//

import SwiftUI

struct SettingsRowView: View {
   var name: String
   var content: String?
   var url: String?
    var body: some View {
       HStack{
          Text("\(name)")
             .foregroundStyle(.secondary)
          Spacer()
          if content != nil && url == nil{
             Text("\(content!)")
          }
          else if content != nil && url != nil{
             Link("\(content!)", destination: URL(string: "\(url!)")!)
             Image(systemName: "arrow.up.right.square").foregroundStyle(Color.blue)
          }
          else{
             EmptyView()
          }
       }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "John / Jane", url: "https://localhost.com")
}
