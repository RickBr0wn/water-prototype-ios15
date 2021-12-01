//
//  PreviewProvider_.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//

import Foundation
import SwiftUI

extension PreviewProvider {
  static var dev: DeveloperPreview {
    DeveloperPreview.instance
  }
}

class DeveloperPreview {
  static let instance = DeveloperPreview()
  
  private init() {}
  
  let vm: WaterViewModel = WaterViewModel()
  
  let drinks: Array<Drink> = [
    .waterBottle500ml,
    .waterBottle750ml,
    .waterBottle1l,
    .waterBottle500ml,
    .waterBottle750ml,
    .waterBottle1l,
  ]
  
  let drink: Drink = .waterBottle500ml
  
}
