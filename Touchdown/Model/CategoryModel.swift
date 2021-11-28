//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import Foundation


struct Category: Codable, Identifiable{
    
    let id: Int
    let name: String
    let image: String
}
