//
//  AppetizerCellView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI


struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
       
        HStack{
            
            
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
               .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                
                
                
            }.padding()
            
            
            
            
        }
        
        
        
        
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
