//
//  TabBarItem.swift
//  water-prototype
//
//  Created by Rick Brown on 22/11/2021.
//
import SwiftUI
import Foundation

enum TabBarItem: Hashable {
  case water, hydration, history
  
  var iconName: String {
    switch self {
    case .water:
      return "drop"
    case .hydration:
      return "circle"
    case .history:
      return "square.grid.2x2"
    }
  }
  
  var title: String {
    switch self {
    case .water:
      return "home"
    case .hydration:
      return "hydration"
    case .history:
      return "settings"
    }
  }
}
