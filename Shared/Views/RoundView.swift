//
//  RoundView.swift
//  Bullseye
//
//  Created by Sebastine Odeh on 22/05/2022.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String;
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle().strokeBorder(
                    Color("StrokeColor"),lineWidth: 2.0
                )
            );
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String;
    var body: some View {
        
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle().fill(Color("ButtonBackgroundFillColor"))
            );
    }
}

struct RoundedTextView: View {
    var text: String;
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(Font.Weight.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: 68.0, height: 55.78)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0).strokeBorder(
                    Color("StrokeColor"),lineWidth: 2.0
                )
            );
    }
}

struct PreviewView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedTextView(text: "999")
        }
    }
}

struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark);
    }
}
