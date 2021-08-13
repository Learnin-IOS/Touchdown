//
//  ContentView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 02/08/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false, content:{
                    VStack(spacing: 0) {
                        
                        FeaturedTabView()
                            .padding(.vertical, 20)
                        
                        FooterView()
                            .padding(.horizontal)

                    } //: VSTACK
                    
                }) // : SCROLL
                
            }//: VSATCK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top )
    }
}
// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
