//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 30/11/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Property
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred() 
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
            .padding()
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                      green: shop.selectedProduct?.green ?? sampleProduct.green,
                      blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

// MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
