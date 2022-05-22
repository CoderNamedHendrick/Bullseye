//
//  TextViews.swift
//  Bullseye
//
//  Created by Sebastine Odeh on 22/05/2022.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String;
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote);
    }
}

struct BigNumberText: View {
    var text: String;
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
            .multilineTextAlignment(.center);
    }
}

struct SliderText: View {
    var text: String;
    
    var body: some View {
        Text(text)
        .foregroundColor(Color("TextColor"))
        .font(.headline)
        .fontWeight(Font.Weight.semibold)
        .frame(width: 35)
    }
}

struct LabelText: View {
    var text: String;
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .font(.caption)
            .fontWeight(Font.Weight.bold)
            .kerning(1.5)
    }
    
}



struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderText(text: "100")
            LabelText(text: "999")
        }
    }
}
