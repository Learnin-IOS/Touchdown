//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - Property
    @State private var isAnimating : Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedprice ?? sampleProduct.formattedprice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
                .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }) //: HSTACK
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.75)){
                    isAnimating.toggle()
                }
            })
    }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
