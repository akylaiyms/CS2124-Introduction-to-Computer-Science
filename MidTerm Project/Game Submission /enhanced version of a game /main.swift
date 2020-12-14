//
//  main.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

var newGame = Game(player1Name: "AKO", player2Name: "ZAK")
newGame.startGame()

while true {
    let result = newGame.playRound()
    if (result != 0) {
        print("Player#", result, "won!")
        break
    }
}
