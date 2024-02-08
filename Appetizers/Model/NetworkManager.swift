//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    
    func getAppetizers(completed: @escaping(Result<[Appetizer], APError>) -> Void ) {
        
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(APError.invalidURL))
            return 
        }
        
    }
    
    
}
