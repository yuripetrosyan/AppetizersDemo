//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetailedView = false
    
    @State private var selectedAppetizer: Appetizer?

    
    var body: some View {
        ZStack{
            
            NavigationStack{
                List(viewModel.appetizers) { appetizer in AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetailedView = true
                            selectedAppetizer = appetizer
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
                
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            .blur(radius: isShowingDetailedView ? 15.0: 0)
            
            
            .scrollDisabled(isShowingDetailedView ? true: false)
                        
            if isShowingDetailedView{
                AppetizerDetailedView(appetizer: MockData.sampleAppetizer, isShowingDetailedView: $isShowingDetailedView)
                
                
                
            }
            
            if viewModel.isLoading {
                LoadingView()
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

