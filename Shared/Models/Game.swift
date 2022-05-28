//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by Sebastine Odeh on 21/05/2022.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100);
    var score = 0;
    var round = 1;
    
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
    }
    
    mutating func restart() {
        target = Int.random(in: 1...100);
        score = 0;
        round = 1;
    }
}
