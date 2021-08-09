//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Le Bon B' Bauma on 07/08/2021.
//

import SwiftUI

struct FeaturedItemView: View {
  // MARK: - PROPERTY
  
  let player: Player
  
  // MARK: - BODY
  
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

// MARK: - PREVIEW

struct FeaturedItemView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedItemView(player: players[0])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
