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

struct BodyText: View {
    var text: String;
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .lineSpacing(12)
    }
}

struct ButtonText: View {
    var text: String;
    
    var body: some View {
        Text(text)
            .bold()
            .kerning(1.5)
            .padding()
            .frame( maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(12)
            .font(.body)
        
    }
}

struct ScoreText: View {
    var score: Int;
    
    var body: some View {
        Text(String(score))
            .font(.title3)
            .fontWeight(.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct DateText: View {
    var date: Date;
    
    var body: some View {
        Text(date, style: .time)
            .font(.title3)
            .fontWeight(.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText: View {
    let text: String;
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

struct ViewsPreview: View {
    var body: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderText(text: "100")
            LabelText(text: "999")
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 4000)
            DateText(date: Date())
            BigBoldText(text: "LeaderBoard")
        }
        .padding()
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        ViewsPreview()
        ViewsPreview().preferredColorScheme(.dark)
    }
}
