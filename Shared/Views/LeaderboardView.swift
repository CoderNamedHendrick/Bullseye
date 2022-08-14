//
//  LeaderBoard.swift
//  Bullseye
//
//  Created by Sebastine Odeh on 13/08/2022.
//

import SwiftUI

struct LeaderBoardView: View {
    @Binding var leaderBoardIsShowing: Bool;
    @Binding var game: Game;
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                HeaderView(leaderBoardIsShowing: $leaderBoardIsShowing);
                LabelView();
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(game.leaderboardEntries.indices) { i in
                            let leaderboardEntry = game.leaderboardEntries[i];
                            RowView(index: i, score: leaderboardEntry.score, date: leaderboardEntry.date);
                        }
                    }
                }
            }
        };
    }
}

struct RowView: View {
    let index: Int;
    let score: Int;
    let date: Date;
    
    var body: some View {
        HStack {
            RoundedTextView(text: String(index));
            Spacer();
            ScoreText(score: score)
                .frame(width: Constants.LeaderBoard.leaderboardScoreColWidth);
            Spacer();
            DateText(date: date)
                .frame(width: Constants.LeaderBoard.leaderboardDateColWidth);
        }.background(
            RoundedRectangle(cornerRadius: .infinity).strokeBorder(Color("LeaderBoardRowColor"),
            lineWidth: Constants.General.strokeWidth)
        )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.LeaderBoard.leaderboardMaxRowWidth)
    }
}

struct HeaderView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass;
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    @Binding var leaderBoardIsShowing: Bool;
    
    var body: some View {
        ZStack {
            HStack {
                
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    BigBoldText(text: "Leaderboard").padding(.leading)
                    Spacer();
                } else {
                    BigBoldText(text: "Leaderboard")
                }
            }.padding(.top)
            HStack {
                Spacer();
                Button(action: {
                    leaderBoardIsShowing = false;
                }) {
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing);
                }
            }
        };
    }
}

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength);
            Spacer();
            LabelText(text: "Score")
                .frame(width: Constants.LeaderBoard.leaderboardScoreColWidth);
            Spacer();
            LabelText(text: "Date")
                .frame(width: Constants.LeaderBoard.leaderboardDateColWidth);
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.LeaderBoard.leaderboardMaxRowWidth)
    }
}

struct LeaderBoard_Previews: PreviewProvider {
    static private var leaderBoardIsShowing = Binding.constant(false);
    static private var game = Binding.constant(Game(loadTestDate: true));
    
    static var previews: some View {
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game: game)
           
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game:game).previewLayout(.fixed(width: 568, height: 320))
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game:game).preferredColorScheme(.dark)
            
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game:game).previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
