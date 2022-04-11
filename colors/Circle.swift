//
//  Circle.swift
//  colors
//
//  Created by Андрей Василевский on 4/11/22.
//

import SwiftUI

struct CircleFigure: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .frame(width: 70, height: 70)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleFigure(color: .blue, opacity: 0.5)
    }
}
