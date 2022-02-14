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
            Slider(value: $redComponent)
            Slider(value: $greenComponent)
            Slider(value: $blueComponent)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

