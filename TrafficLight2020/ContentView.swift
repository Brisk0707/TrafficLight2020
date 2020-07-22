//
//  ContentView.swift
//  TrafficLight2020
//
//  Created by Борис Крисько on 21.07.2020.
//  Copyright © 2020 Borys Krisko. All rights reserved.
//

import SwiftUI

//поработать над дизайном

struct ContentView: View {
    
    let lightIsOnBrightness = 0.0
    let lightIsOffBrightness = 0.9
    @State var redLightBrightness = 0.9
    @State var yellowLightBrightness = 0.9
    @State var greenLighBrightness = 0.9
    @State var lightIsOff = true
    @State var titleOfButton = "START"
    
    func changeColor(){
        if redLightBrightness == lightIsOnBrightness {
            redLightBrightness = lightIsOffBrightness
            yellowLightBrightness = lightIsOnBrightness
        } else if yellowLightBrightness == lightIsOnBrightness {
            yellowLightBrightness = lightIsOffBrightness
            greenLighBrightness = lightIsOnBrightness
        } else if greenLighBrightness == lightIsOnBrightness {
            greenLighBrightness = lightIsOffBrightness
            redLightBrightness = lightIsOnBrightness
        } else {
            redLightBrightness = lightIsOnBrightness
            titleOfButton = "NEXT"
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
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .frame(width: 150.0, height: 50)
                    .background(Color.blue)
                .clipShape(Capsule())
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
