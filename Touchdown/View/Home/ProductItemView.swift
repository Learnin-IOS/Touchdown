//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - Property
    let product: Product
    
    
    // MARK: -Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
             // PHOTO
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
            .cornerRadius(12)
            
             // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text("$\(product.price )")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }) //: VSTACK
    }
}

// MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
