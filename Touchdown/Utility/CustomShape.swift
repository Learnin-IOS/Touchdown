//
//  CustomShape.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 30/11/2021.
//

import SwiftUI

struct CustomShape: Shape {
    
    // MARK: - Property
    
    
    // MARK: - Body
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
// MARK: - Preview
struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
