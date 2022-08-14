//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by Sebastine Odeh on 21/05/2022.
//

import Foundation

struct LeaderboardEntry {
    let score: Int;
    let date: Date;
}

struct Game {
    var target = Int.random(in: 1...100);
    var score = 0;
    var round = 1;
    var leaderboardEntries: [LeaderboardEntry] = [];
    
    init(loadTestDate: Bool = false) {
        if (loadTestDate) {
            leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()));
            leaderboardEntries.append(LeaderboardEntry(score: 80, date: Date()));
            leaderboardEntries.append(LeaderboardEntry(score: 200, date: Date()));
            leaderboardEntries.append(LeaderboardEntry(score: 50, date: Date()));
            leaderboardEntries.append(LeaderboardEntry(score: 90, date: Date()));
        }
    }
    
    func points(sliderValue: Int) -> Int {
        let pointEarned = 100 - abs(self.target - sliderValue);
        if (pointEarned == 100){
            return pointEarned + 100;
        } else if (pointEarned == 98){
            return pointEarned + 50;
        }
        return pointEarned;
    }
    
    mutating func startNewRound(points: Int) {
        score += points;
        round += 1;
        target = Int.random(in: 1...100);
        addToLeaderboard(points: points);
    }
    
    mutating func restart() {
        target = Int.random(in: 1...100);
        score = 0;
        round = 1;
    }
    
    mutating func addToLeaderboard(points: Int) {
        leaderboardEntries.append(LeaderboardEntry(score: points,date:Date()));
        leaderboardEntries.sort {$0.score > $1.score} ;
    }
}
