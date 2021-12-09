//
//  SectionView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct SectionView: View {
    
    // MARK:  - Property
    
    @State var rotateClockWise: Bool
    
    // MARK:  - Body
    var body: some View {
        VStack (spacing: 0 ){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white )
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
            
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK:  - Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false )
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
