//
//  APButton.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 29/02/2024.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    var body: some View {
        
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(RadialGradient(gradient: Gradient(colors: [Color.brandPrimary1, Color.white]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 5, endRadius: 500))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .shadow(radius: 10)
            
        
    }
 
    }



#Preview {
    APButton(title: "test")

}
