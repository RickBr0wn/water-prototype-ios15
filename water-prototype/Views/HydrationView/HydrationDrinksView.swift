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
    GridItem(.fixed(70), spacing: nil, alignment: .center),
    GridItem(.fixed(70), spacing: nil, alignment: .center),
  ]
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: rows, spacing: 10) {
        ForEach(0..<drinks.count, id: \.self) { drink in
          HydrationDrinkView(drink: drinks[drink])
            .frame(width: UIScreen.main.bounds.size.width / 2)
            .background(drinks[drink].color)
            .cornerRadius(10.0)
        }
      }
    }
    .frame(height: 160)
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
