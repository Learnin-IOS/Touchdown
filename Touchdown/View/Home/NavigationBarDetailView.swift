//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack{
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            }) //: BUTTON
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: BUTTON
        } //: HSTACK
    }
}

// MARK: Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop() )
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
