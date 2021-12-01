//
//  HydrationDrinksView.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//

import SwiftUI

struct HydrationDrinksView: View {
  let drinks: Array<Drink>
  let rows: Array<GridItem> = [
    GridItem(.flexible(), spacing: 20, alignment: nil),
    GridItem(.flexible(), spacing: 20, alignment: nil),
  ]
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: rows, spacing: 10) {
        ForEach(0..<drinks.count, id: \.self) { drink in
          HydrationDrinkView(drink: drinks[drink])
            .frame(minWidth: UIScreen.main.bounds.size.width / 2)
            .background(drinks[drink].color)
            .cornerRadius(20.0)
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: 210)
    .background(Color.teal.opacity(0.4))
  }
}

struct HydrationDrinksView_Previews: PreviewProvider {
  static var previews: some View {
    HydrationDrinksView(drinks: dev.drinks)
      .previewLayout(.sizeThatFits)
      .padding()
      .frame(width: .infinity)
  }
}
