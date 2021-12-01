//
//  TabBarInnerContainerView.swift
//  water-prototype
//
//  Created by Rick Brown on 22/11/2021.
//

import SwiftUI

struct TabBarInnerContainerView<Content: View>: View {
  @Binding var selection: TabBarItem
  
  let content: Content
  
  @State private var tabs: Array<TabBarItem> = []
  
  init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
    self._selection = selection
    self.content = content()
  }
  
  var body: some View {
    ZStack {
      content.edgesIgnoringSafeArea(.bottom)
      
      VStack {
        Spacer()
        
        TabBarRowView(tabs: tabs, selection: $selection, localSelection: selection)
      }
    }
    .onPreferenceChange(TabBarItemsPreferenceKey.self) { value in
      self.tabs = value
    }
  }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
  static let tabs: Array<TabBarItem> = [.water, .hydration, .history]
  
  static var previews: some View {
    TabBarInnerContainerView(selection: .constant(tabs.first!)) {
      Color.red
    }
  }
}
