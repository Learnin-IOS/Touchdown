//
//  ContentView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 02/08/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @ EnvironmentObject var shop: Shop
    // MARK: - Body
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content:{
                        VStack {
                            
                            FeaturedTabView()
                                .frame(width: UIScreen.main.bounds.width - 50, height: 210)
                                .padding(.vertical, 20)
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                                
                                            }
                                        }
                                } //: LOOP
                                
                            }) //: GRID
                                .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) // : SCROLL
                }//: VSATCK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                 ProductDetailView()
            }
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top )
    }
}
// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
        //            .previewDevice("iPhone 12 Pro")
    }
}
