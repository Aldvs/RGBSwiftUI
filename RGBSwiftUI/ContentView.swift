//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by admin on 14.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    var body: some View {
        VStack {
            Color(
                red: redComponent / 255,
                green: greenComponent / 255,
                blue: blueComponent / 255)
            HStack {
                Text("\(lround(redComponent))").foregroundColor(.red)
                Slider(value: $redComponent, in: 0...255, step: 1)
            }
            HStack {
                Text("\(lround(greenComponent))").foregroundColor(.green)
                Slider(value: $greenComponent, in: 0...255, step: 1)
            }
            HStack {
                Text("\(lround(blueComponent))").foregroundColor(.blue)
                Slider(value: $blueComponent, in: 0...255, step: 1)
            }
            
        }
        .padding(.all, 11.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

