//
//  StringExtentions.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 17/03/2024.
//

import Foundation

extension String {
    
    //valid email checker                                                                                                               
    
    var isValid: Bool {
        // This is a basic email validation, you can replace it with your own logic
        let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
    
}
         

