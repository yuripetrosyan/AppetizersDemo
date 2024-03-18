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
        ZStack{
            
            NavigationStack{
                
            
                List(viewModel.appetizers) { appetizer in AppetizerListCell(appetizer: appetizer)
                    
                        .onTapGesture {
                            
                            viewModel.isShowingDetailedView = true
                            viewModel.selectedAppetizer = appetizer
                            
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
                .disabled(viewModel.isShowingDetailedView)
                
            }
            .onAppear {
                viewModel.getAppetizers()
            }
    
            
            .blur(radius: viewModel.isShowingDetailedView ? 15.0: 0)
            
                                    
            if viewModel.isShowingDetailedView{
                AppetizerDetailedView(
                   appetizer: viewModel.selectedAppetizer!,
                   isShowingDetailedView: $viewModel.isShowingDetailedView)
                
                
                
            }
            
            if viewModel.isLoading {
                ProgressView()
                    .tint(.brandPrimary1)
            }
            
            
        }.alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        
        
        
    }
    
    
}

#Preview {
    AppetizerListView()
}

