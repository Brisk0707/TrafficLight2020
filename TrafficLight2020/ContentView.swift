//
//  ContentView.swift
//  TrafficLight2020
//
//  Created by Борис Крисько on 21.07.2020.
//  Copyright © 2020 Borys Krisko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLightBrightness = 0.9
    @State var yellowLightBrightness = 0.9
    @State var greenLighBrightness = 0.9
    @State var lightIsOff = true
    @State var currentLight = ""
    @State var titleOfButton = "Start"
    
    func changeColor(){
        if redLightBrightness == 0.0 {
            redLightBrightness = 0.9
            yellowLightBrightness = 0.0
        } else if yellowLightBrightness == 0.0 {
            yellowLightBrightness = 0.9
            greenLighBrightness = 0.0
        } else if greenLighBrightness == 0.0 {
            greenLighBrightness = 0.9
            redLightBrightness = 0.0
        } else {
            redLightBrightness = 0.0
            titleOfButton = "Next"
        }
        
    }
    var body: some View {
        VStack {
            VStack {
                Color(.red)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .brightness(redLightBrightness)
                Color(.yellow)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .brightness(yellowLightBrightness)
                Color(.green)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .brightness(greenLighBrightness)
            }
            Spacer()
            Button(action: {self.changeColor()}) {
                Text(titleOfButton)
                    .padding(.bottom, 60)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
