//
//  Alert.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 25/02/2024.
//

    
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}


struct AlertContext {
    static let invalidURL   = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid. Please contact support"),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later or contact support"),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidData  = AlertItem(title: Text("Server Error"),
                                              message: Text("Issue connecting to the server. Please contact support"),
                                              dismissButton: .default(Text("Ok")))
    
    static let unableToComplete     = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time."),
                                              dismissButton: .default(Text("Ok")))
    
}
