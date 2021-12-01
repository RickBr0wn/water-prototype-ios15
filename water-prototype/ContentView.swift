//
//  ContentView.swift
//  water-prototype
//
//  Created by Rick Brown on 02/11/2021.
//

import SwiftUI

/*
 https://dribbble.com/shots/15400465-Water-Drinking-Reminder-App
 */
struct ContentView: View {
  @ObservedObject var vm: WaterViewModel
  
  var body: some View {
    TabBarView(vm: vm)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(vm: dev.vm)
  }
}
