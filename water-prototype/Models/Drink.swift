//
//  Drink.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//

import Foundation
import SwiftUI

enum Drink {
  case waterBottle500ml, waterBottle750ml, waterBottle1l
  
  var name: String {
    switch self {
    case .waterBottle500ml:
      return "water bottle 500ml"
    case .waterBottle750ml:
      return "water bottle 750ml"
    case .waterBottle1l:
      return "water bottle 1 liter"
    }
  }
  
  var amount: Int {
    switch self {
    case .waterBottle500ml:
      return 500
    case .waterBottle750ml:
      return 750
    case .waterBottle1l:
      return 1000
    }
  }
  
  var icon: String {
    switch self {
    case .waterBottle500ml:
      return "takeoutbag.and.cup.and.straw"
    case .waterBottle750ml:
      return "takeoutbag.and.cup.and.straw"
    case .waterBottle1l:
      return "takeoutbag.and.cup.and.straw"
    }
  }
  
  var color: Color {
    switch self {
    case .waterBottle500ml:
      return .theme.lightBlue
    case .waterBottle750ml:
      return .theme.midBlue
    case .waterBottle1l:
      return .theme.lightBrown
    }
  }
}
