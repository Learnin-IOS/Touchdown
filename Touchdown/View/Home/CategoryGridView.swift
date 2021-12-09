//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 29/11/2021.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: Property
    
    // MARK: Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { category in CategoryItemView(category: category)    
                    }
                }
            }) //:  GRID
        }) //: SCROLL
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
         
    }
}
// MARK: Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
