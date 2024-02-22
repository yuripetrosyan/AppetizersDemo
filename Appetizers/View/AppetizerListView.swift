//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
  
    
    var body: some View {
        
        NavigationStack{
            
            List(viewModel.appetizers) { appetizer in AppetizerListCell(appetizer: appetizer)
            }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
             
      
    }

#Preview {
    AppetizerListView()
}

