//
//  ProductModel.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
//    var red: Double{return color[0]}
//    var blue: Double{return color[1]}
//    var green: Double{return color[2]}
//
//    var formattedprice: String
}
