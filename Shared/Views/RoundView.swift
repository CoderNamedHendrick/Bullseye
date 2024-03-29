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
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle().strokeBorder(
                    Color("StrokeColor"),lineWidth:Constants.General.strokeWidth
            ));
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String;
    var body: some View {
        
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle().fill(Color("ButtonBackgroundFillColor"))
            );
    }
}

struct RoundedRectTextView: View {
    var text: String;
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(Font.Weight.bold)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius).strokeBorder(
                    Color("StrokeColor"),lineWidth: Constants.General.strokeWidth
                )
            );
    }
}

struct RoundedTextView: View {
     let text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(Circle()
                .strokeBorder(Color("LeaderBoardRowColor")))
        
    }
}

struct PreviewView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text: "999")
            RoundedTextView(text: "1")
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
