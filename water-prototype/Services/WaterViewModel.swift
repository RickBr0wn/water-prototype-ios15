//
//  WaterViewModel.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//

import Foundation
import SwiftUI

class WaterViewModel: ObservableObject {
  @Published var drinks: Array<Drink> = []
  @Published var currentHydrationAmount: Int = 86
  
  init() {
    populateDrinksArray()
  }
  
  private func populateDrinksArray() {
    let dummyDrinks: Array<Drink> = [
      .waterBottle500ml,
      .waterBottle750ml,
      .waterBottle1l,
      .waterBottle500ml,
      .waterBottle750ml,
      .waterBottle1l,
    ]
    
    self.drinks = dummyDrinks
  }
}
