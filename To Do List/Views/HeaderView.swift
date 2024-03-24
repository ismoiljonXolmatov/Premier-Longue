//
//  HeaderView.swift
//  To Do List
//
//  Created by Khalmatov on 30.05.2023.
//

import SwiftUI

struct HeaderView: View {
    let offSet: Double
    let title: String
    let subtitle: String
    let angel: Double
    let background: Color
    let weightSubtitle: Double
    
    var body: some View {
        
         ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angel))
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: weightSubtitle))
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y:-offSet)
     }
    
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(offSet: -100, title: "title", subtitle: "subtitle", angel: 15, background: .blue, weightSubtitle: 30)
    }
}
