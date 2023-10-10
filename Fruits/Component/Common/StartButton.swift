//
//  StartButton.swift
//  Fruits
//
//  Created by mac on 6.10.2023.
//

import SwiftUI

struct StartButton: View {
    @AppStorage("showFirstPage") var showFirstPage:Bool = true
    @State var feedbackGenerator = UINotificationFeedbackGenerator()
    var body: some View {
        VStack{
            Button{
                withAnimation(.easeOut(duration: 1)){
                    feedbackGenerator.notificationOccurred(.success)
                    showFirstPage = false
                }
            }label: {
                HStack{
                    Text("Start")
                  
                    Image(systemName: "arrow.right.circle")
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            }
            .accentColor(.white)
        }
    }
}

#Preview {
    StartButton()
}
