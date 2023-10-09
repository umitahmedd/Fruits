//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by mac on 9.10.2023.
//

import SwiftUI

struct SettingsLabelView: View {
   var labelText:String
   var labelIcon:String
    var body: some View {
       HStack{
          Text(labelText.uppercased()).fontWeight(.semibold)
          
          Spacer()
          
          Image(systemName: "\(labelIcon)")
       }
    }
}

#Preview {
    SettingsLabelView(labelText: "Lorem", labelIcon: "info.circle")
}
