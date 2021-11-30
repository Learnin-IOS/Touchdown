//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 30/11/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Property
    
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
            .padding()
            .background(
                Color(red: sampleProduct.red,
                      green: sampleProduct.green,
                      blue: sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

// MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
