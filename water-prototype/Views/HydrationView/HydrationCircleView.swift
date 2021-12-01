//
//  HydrationCircleView.swift
//  water-prototype
//
//  Created by Rick Brown on 01/12/2021.
//

import SwiftUI

struct HydrationCircleView: View {
  let hydration: Int
  let lineWidth: CGFloat = 14.0
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
        .foregroundColor(Color.blue.opacity(0.2))
      
      Circle()
        .trim(from: 0.0, to: CGFloat(hydration) / 100)
        .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
        .foregroundColor(Color.blue)
        .rotationEffect(Angle(degrees: 270.0))
        .animation(.spring(), value: lineWidth)
      
      Text("\(hydration)")
        .font(.system(size: 80, weight: .bold, design: .rounded))
    }
    .shadow(radius: 5)
  }
}

struct HydrationCircleView_Previews: PreviewProvider {
  static var previews: some View {
    HydrationCircleView(hydration: 89)
      .previewLayout(.sizeThatFits)
      .padding()
      .frame(width: 400, height: 400, alignment: .center)
  }
}
