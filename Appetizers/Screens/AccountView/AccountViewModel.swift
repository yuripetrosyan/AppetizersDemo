//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 12/03/2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
    
    @Published var alertItem: AlertItem?
    
    @Published var firstName = ""
    @Published var secondName = ""
    @Published var emailAddress = ""
    @Published var birthdate = Date()
    
    @Published var extraNapkins = false
    @Published var frequentReffils = true
        
    
    var isValidForm: Bool{
        
        guard !firstName.isEmpty && !secondName.isEmpty && !emailAddress.isEmpty else {
            //write the error message here
            alertItem = AlertContext.emptyField
            return false
        }
        
        
        guard emailAddress.isValid else{
            //write the error message here
            self.alertItem = AlertContext.invalidEmailFormat
            return false
        }
                
        return true
        
    }
    
    func saveChanges() {
        guard isValidForm else{ return }
        
        print("Changes saved")
    }
    
    
}
