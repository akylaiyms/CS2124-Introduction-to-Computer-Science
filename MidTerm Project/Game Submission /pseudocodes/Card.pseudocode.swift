//
//  Card.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Card {
    var name: String
    var attackValue: Int
    var defenseValue: Int
    
    init (withName: String , attack: Int, defense: Int) {
        //now card's defense value = defenseValue
        //now card's attack value = attackvalue
    }
    
    func calculateAttack(opposingCard: Card) -> Int {
      //attackvalue/defensevalue of 2 cards are compared
      //the card with bigger value wins
   
    }
}
