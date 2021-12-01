//
//  water_prototypeApp.swift
//  water-prototype
//
//  Created by Rick Brown on 02/11/2021.
//

import SwiftUI

@main
struct water_prototypeApp: App {
  @StateObject private var vm = WaterViewModel()
  
  var body: some Scene {
    WindowGroup {
      ContentView(vm: vm)
    }
  }
}
