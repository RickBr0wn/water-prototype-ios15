//
//  TabBarRowView.swift
//  water-prototype
//
//  Created by Rick Brown on 22/11/2021.
//

import SwiftUI

struct TabBarRowView: View {
  let tabs: Array<TabBarItem>
  @Binding var selection: TabBarItem
  @Namespace private var namespace
  @State var localSelection: TabBarItem
  
  var body: some View {
    tabBar
      .onChange(of: selection) { value in
        withAnimation(.easeInOut) {
          localSelection = value
        }
      }
  }
}

extension TabBarRowView {
  private func switchToTab(tab: TabBarItem) -> Void {
    selection = tab
  }
  
  private func tabView(tab: TabBarItem) -> some View {
    VStack {
      Image(systemName: tab.iconName)
        .font(.title)
    }
    .foregroundColor(localSelection == tab ? Color.theme.black : Color.gray)
    .padding(.vertical, 8)
    .frame(height: 60)
    .frame(maxWidth: .infinity)
    .background(
      ZStack {
        if localSelection == tab {
          RoundedRectangle(cornerRadius: 100.0)
            .fill(Color.theme.black.opacity(0.2))
            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
        }
      }
    )
  }
  
  private var tabBar: some View {
    HStack {
      ForEach(tabs, id: \.self) { tab in
        tabView(tab: tab)
          .onTapGesture { switchToTab(tab: tab) }
      }
    }
    .padding(6)
    .background(Color.clear.edgesIgnoringSafeArea(.bottom))
    .cornerRadius(10.0)
    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
    .padding(.horizontal)
  }
}

struct CustomTabBarView_Previews: PreviewProvider {
  static let tabs: Array<TabBarItem> = [.water, .hydration, .history]
  
  static var previews: some View {
    VStack {
      Spacer()
      TabBarRowView(tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
    }
  }
}
