 //
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailedView()
                .padding(.horizontal)

            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            // DETAIL BOTTOM PART
            VStack (alignment: .center, spacing: 0, content: {
                // RAITING + SIZES
                // DESCRIPTION
                // QUANTITY + FAVOURITE
                // ADD TO CART
            })//: VSTACK
            
           
            Spacer()
//
        }) //: VSTACK
            .ignoresSafeArea(.all, edges: .all)
        background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
                 ).ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
