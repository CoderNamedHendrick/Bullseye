//
//  ContentView.swift
//  Shared
//
//  Created by Sebastine Odeh on 21/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                
            Text("89")
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            HStack {
                Text("1")
                    .font(.headline)
                    .fontWeight(Font.Weight.semibold)
                
                Slider(value: .constant(50), in : 1.0...100)
                Text("100")
                    .font(.headline)
                    .fontWeight(Font.Weight.semibold)
            }
            
            Button("Hit me") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.buttonStyle(.bordered)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
