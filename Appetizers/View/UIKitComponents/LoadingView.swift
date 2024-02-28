//
//  LoadingView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 25/02/2024.
//

import SwiftUI

//loading indicator

struct ActivityIndicator: UIViewRepresentable{
    
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        
        activityIndicatorView.color = UIColor.brandPrimary1
       
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    
}


struct LoadingView: View {
    var body: some View{
        
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ActivityIndicator()
            
            
            
        }
        
    }
}

#Preview {
    LoadingView()
}
