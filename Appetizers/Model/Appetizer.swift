//
//  Appetizer.swift
//  Appetizer
//
//  Created by Yuri Petrosyan on 08/02/2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    
        let id: Int // ?? UUID()
        let name: String
        let imageURL: String
        let carbs: Int
        let protein: Int
        let calories: Int
        let price: Double
        let description: String
    
}


struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}


struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                          name: "Shish Tawouk",
                                          imageURL: "testImage",
                                          carbs: 40,
                                          protein: 20,
                                          calories: 390,
                                          price: 18.99,
                                          description: "Grilled chicken tenders with flatbread and garlic paste")
    
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
