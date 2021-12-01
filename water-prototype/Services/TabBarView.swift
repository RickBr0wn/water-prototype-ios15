//
//  TabBarView.swift
//  water-prototype
//
//  Created by Rick Brown on 22/11/2021.
//

import SwiftUI

struct TabBarView: View {
  @State private var tabSelection: TabBarItem = .hydration
  @ObservedObject var vm: WaterViewModel
  
  var body: some View {
    TabBarInnerContainerView(selection: $tabSelection) {
      WaterView()
        .tabBarItem(tab: .water, selection: $tabSelection)
      
      HydrationView(vm: vm)
        .tabBarItem(tab: .hydration, selection: $tabSelection)
      
      HistoryView()
        .tabBarItem(tab: .history, selection: $tabSelection)
    }
  }}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView(vm: dev.vm)
  }
}
