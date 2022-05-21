//
//  ContentView.swift
//  Shared
//
//  Created by Sebastine Odeh on 21/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false;
    @State private var sliderValue: Double = 10.0;
    @State private var game: Game = Game();
    
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                
            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            HStack {
                Text("1")
                    .font(.headline)
                    .fontWeight(Font.Weight.semibold)
                
                Slider(value: self.$sliderValue, in : 1.0...100)
                Text("100")
                    .font(.headline)
                    .fontWeight(Font.Weight.semibold)
            }
            
            Button("Hit me") {
                print("Hello SwiftUI");
                self.alertIsVisible = true;
            }.buttonStyle(.bordered)
                .alert(isPresented: $alertIsVisible, content: {
                    let roundedValue : Int = Int(self.sliderValue.rounded());
                    return Alert(
                        title: Text("Hello there!"),
                        message: Text("The slider's value is \(roundedValue).\n" +
                            "You scored \(self.game.points(sliderValue: roundedValue)) points this round."),
                        dismissButton: .default(Text("Awesome!"))
                    );
                })
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
