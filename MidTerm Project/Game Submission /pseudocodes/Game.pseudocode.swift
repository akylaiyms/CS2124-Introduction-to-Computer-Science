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
    var winThreshold: Int = 5
    
    
    enum GameState {
        case player1Won, player2Won, gameContinues
    }
    
    init(withPlayer1Name player1Name: String, player2Name: String) {
        //player1 is a new player with player1Name
        //player2 is a new player with player2Name
    }
    
    func startGame() {
        //player1 draws 5 cards
        //player2 draws 5 cards
    }
    
    func playRound() {
        //player1 picks a card from their hand to play
        //player2 picks a card from their hand to play
        //player1's attack card against player2's card is calculated
        //player2's attack card against player2's card is calculated
        //if player1's attack card is stronger than player2's card
            //player1 earns a point
        //else
            //player2 earns a point
        //if player1's points >= winTreshold
            //return player1 wins
        //else if player2's points >= winThreshold
            // return player2 wins
        //else
            //return gameContinues
    }
}
