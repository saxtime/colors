//
//  ContentView.swift
//  colors
//
//  Created by Андрей Василевский on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 1
    @State var buttonText = "Start"
    var body: some View {
        VStack {
            CircleFigure(color: .red, opacity: counter == 1 ? 1.0 : 0.2)
            CircleFigure(color: .yellow, opacity: counter == 2 ? 1.0 : 0.2)
            CircleFigure(color: .green, opacity: counter == 3 ? 1.0 : 0.2)
            Spacer()
            Button(action: {
                switch counter {
                case 1:
                    buttonText = "Next"
                    counter += 1
                case 2:
                    counter += 1
                case 3:
                    counter = 1
                default:
                    buttonText = "Start"
                    counter += 1
                }
            }, label: {
                Text(buttonText)
          })
        }
        .padding()
    }
}

 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
