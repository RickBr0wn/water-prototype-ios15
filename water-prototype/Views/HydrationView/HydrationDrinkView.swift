//
//  HydrationDrinkView.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//
import SwiftUI

struct HydrationDrinkView: View {
  let drink: Drink
  let width: CGFloat = UIScreen.main.bounds.size.width / 2
  
  var body: some View {
    HStack {
      Image(systemName: drink.icon)
        .font(.title)
      
      Text("\(drink.amount)ml")
      
    }
    .padding()
    .background(drink.color)
  }
}

struct HydrationDrinkView_Previews: PreviewProvider {
  static var previews: some View {
    HydrationDrinkView(drink: dev.drink)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
