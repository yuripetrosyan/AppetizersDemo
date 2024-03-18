//
//  OrderView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack{
            
            ProgressView()
                .tint(.brandPrimary1)
                
         
             .navigationTitle("Orders")
             
        }
    }
}

#Preview {
    OrderView()
}
