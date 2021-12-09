//
//  FooterView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 07/08/2021.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, confortable, lightweight and durable football helmets in the market at afordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            
            Text("Copyright © Le Bon B' Bauma\nAll right reserved ")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }//: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
