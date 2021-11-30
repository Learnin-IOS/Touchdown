//
//   Shop.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 30/11/2021.
//

import Foundation

class Shop: ObservableObject {
 @Published  var showingProduct: Bool = false
 @Published  var selectedProduct: Product? = nil
}
