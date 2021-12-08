//
//  HeaderDetailedView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct HeaderDetailedView: View {
    
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }) //: VSTACK
            .foregroundColor(.white)
    }
}

// MARK: - Preview
struct HeaderDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailedView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
