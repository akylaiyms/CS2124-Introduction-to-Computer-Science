//
//  Game.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Game {
    var player1: Player
    var player2: Player
    var winThreshold: Int
    
    init(player1Name: String, player2Name: String) {
        self.player1 = Player(name: player1Name)
        self.player2 = Player(name: player2Name)
        self.winThreshold = 8
    }
    
    mutating func startGame() {
        for _ in (1...5) {
            self.player1.draw()
            self.player2.draw()
        }
        
        print("OK, the game is about to start...")
    }
    
    mutating func playRound() -> Int{
        print("PLAYER#1 \(self.player1.name) HAND: ")
        self.player1.displayHand()
        
        print("PLAYER#2 \(self.player2.name) HAND: ")
        self.player2.displayHand()
        
        print("Player#1 \(self.player1.name) - please enter the index of a card you want to play: ")
        let player1Index = Int(readLine() ?? "0") ?? 0
        
        print("Player#2 \(self.player2.name) - please enter the index of a card you want to play: ")
        let player2Index = Int(readLine() ?? "0") ?? 0
        
        let player1Card = self.player1.playCard(atIndex: player1Index)
        let player2Card = self.player2.playCard(atIndex: player2Index)
        
        self.player1.draw()
        self.player2.draw()
        
        
        let player1Attack = player1Card.calculateAttack(against: player2Card)
        let player2Attack = player2Card.calculateAttack(against: player1Card)
        
        if (player1Attack > player2Attack) {
            self.player1.earnPoint()
        } else if (player2Attack > player1Attack) {
            self.player2.earnPoint()
        }
        
        print("-----------")
        print("POINTS (\(self.player1.name) and \(self.player2.name)): ", self.player1.points, " - ", self.player2.points)
        print("-----------")
        
        if (self.player1.points == self.winThreshold) {
            return 1
        }
        if (self.player2.points == self.winThreshold) {
            return 2
        }
        return 0
    }
}
