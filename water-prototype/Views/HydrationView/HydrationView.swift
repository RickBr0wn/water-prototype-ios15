//
//  HydrationView.swift
//  water-prototype
//
//  Created by Rick Brown on 23/11/2021.
//
import SwiftUI

struct HydrationView: View {
  @ObservedObject var vm: WaterViewModel
  
  var body: some View {
    VStack(alignment: .center) {
      Spacer()
      
      header
      
      Spacer()
      
      HydrationCircleView(hydration: vm.currentHydrationAmount)
        .frame(width: UIScreen.main.bounds.size.width * 0.60)
      
      HydrationDrinksView(drinks: vm.drinks)
      
      Spacer(minLength: 150)
    }
  }
}

extension HydrationView {
  private var header: some View {
    Text("Hydration View")
      .font(.title2)
      .fontWeight(.bold)
  }
}

struct HydrationView_Previews: PreviewProvider {
  static var previews: some View {
    HydrationView(vm: dev.vm)
  }
}
