//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import UIKit



final class NetworkManager { //final - cannot be subclassed. Servers as singleton (can only be 1 instance of it thoroughout the app
    
    
    static let shared = NetworkManager() //shared insures that only 1 instance of Network Manager is created and accessed throughout the app
    
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    
    private init() {} //private here enforces the singleton pattern
    
    
    
    
    //fetching appetizer data from the remote server
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void ) {
        
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(APError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            //check if there's data returned
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
            
            
        }
        
        task.resume()
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping  (UIImage?) -> Void ) {
        
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else{
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            
            guard let data = data, let image = UIImage(data: data) else{ completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
            
            
        }
        
        task.resume()
        
    }
    
}



