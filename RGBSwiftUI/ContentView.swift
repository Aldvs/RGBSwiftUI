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
            Color(red: redComponent, green: greenComponent, blue: blueComponent)
            HStack {
                Text("\(redComponent)").foregroundColor(.red)
                Slider(value: $redComponent)
            }
            HStack {
                Text("\(greenComponent)").foregroundColor(.green)
                Slider(value: $greenComponent)
            }
            HStack {
                Text("\(blueComponent)").foregroundColor(.blue)
                Slider(value: $blueComponent)
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

