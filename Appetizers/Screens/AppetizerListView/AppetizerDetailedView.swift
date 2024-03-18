//
//  AppetizerDetailedView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 28/02/2024.
//

import SwiftUI

struct AppetizerDetailedView: View {
    
    
    
    let appetizer: Appetizer
    @Binding var isShowingDetailedView: Bool
    
    var body: some View {
        
        VStack {
            
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 225)
            
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                Text(appetizer.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                
                
                HStack(spacing: 40){
                    
                    VStack(spacing: 5){
                        Text("Calories")
                        
                        Text("\( appetizer.calories)")
                            .foregroundStyle(.secondary)
                    }
                    
                    VStack(spacing: 5){
                        Text("Carbs")
                        
                        Text("\( appetizer.carbs)")
                            .foregroundStyle(.secondary)
                    }
                    
                    VStack(spacing: 5){
                        Text("Protein")
                        
                        Text("\( appetizer.protein)")
                            .foregroundStyle(.secondary)
                    }
                    
                }
            }
            
            Spacer()
            
            Button{
                
            }label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
            }                                           
        }.padding(.bottom,  30)
            
            .frame(width: 300, height: 550)
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .shadow(radius: 40)
            
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    isShowingDetailedView = false
                }, label: {
                   
                        
                        XMarkButton()
                    
                    
                }).padding(10)
            }
            
            
            
        
    }
}

#Preview {
    AppetizerDetailedView(appetizer: MockData.sampleAppetizer, isShowingDetailedView: .constant(true))
}
