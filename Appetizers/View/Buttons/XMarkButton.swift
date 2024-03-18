//
//  XMarkButton.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 29/02/2024.
//

import SwiftUI

struct XMarkButton: View {
    
    var body: some View{
        
        ZStack{
            Circle()
                
                .foregroundStyle(.brandPrimary.opacity(0.7))
                .frame(width: 30, height: 30)
            
            Image(systemName: "xmark")
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundStyle(.white)
               
        }

        
    }
}


#Preview {
    XMarkButton()
}
