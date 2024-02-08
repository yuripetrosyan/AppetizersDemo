//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack{
         
            List(MockData.appetizers){
                appetizer in AppetizerListCell(appetizer: MockData.sampleApetizer)
            }.listStyle(.plain)
             .navigationTitle("🌮 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}

