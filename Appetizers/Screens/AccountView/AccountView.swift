//
//  AccountView.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel =  AccountViewModel()//kapum enq viewmodelin
    
 
    var body: some View {
        
        
       
        NavigationStack{
            
            Form{
                Section("Personal Info") {
                    TextField("First Name", text: $viewModel.firstName)
                        .autocorrectionDisabled()
                    TextField("Second Name", text: $viewModel.secondName)
                        .autocorrectionDisabled()
                    TextField("Email", text: $viewModel.emailAddress)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    
                    
                    
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                        
                    }
                }
                
                Section("Requests"){
                    
                    Toggle(isOn: $viewModel.extraNapkins ) {
                        Text("Extra Napkins")
                    }
                    
                    Toggle(isOn: $viewModel.frequentReffils) {
                        Text("Frequent Refills")
                    }
                }.tint(.red)
                
                
            }
            
            
            
            
            
            .navigationTitle(" Account")
        }
    
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
