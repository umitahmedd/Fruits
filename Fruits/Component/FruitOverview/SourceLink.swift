//
//  SourceLink.swift
//  Fruits
//
//  Created by mac on 7.10.2023.
//

import SwiftUI

struct SourceLink: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                    Image( systemName: "arrow.up.right.square")
            }
        }
    }
}

#Preview {
    SourceLink()
}
