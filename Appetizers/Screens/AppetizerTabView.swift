//
//  ContentView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {Label("Home", systemImage: "house")}

            AccountView()
                .tabItem {Label("Account", systemImage: "person")}

            OrderView()
                .tabItem {Label("Order", systemImage: "bag")}
            
        }.tint(.brandPrimary)
           
            
    }    
}


#Preview {
    AppetizerTabView()
}
   


