//
//  RaitingsSizesDetailView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 30/11/2021.
//

import SwiftUI

struct RaitingsSizesDetailView: View {
    
    // MARK: - Property
    
    let sizes : [String] = ["XS", "S", "M", "L", "XL"]
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                ForEach(1...5, id: \.self) { item  in
                    Button(action: {}, label: {
                        Image(systemName: "star.fill")
                            .frame(width:28, height: 28,alignment: .center)
                            .background(colorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }) //: BUTTON
                }
            })
        })
            
        Spacer()
            
            //SIZES
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                            
                        })
                    }
                })
            })
            
        }) //: HSTACK
    }
}

// MARK: - Preview
struct RaitingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
