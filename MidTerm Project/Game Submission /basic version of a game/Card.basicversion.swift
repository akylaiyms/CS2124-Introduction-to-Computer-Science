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
    
    init (name: String , attack: Int, defense: Int) {
        self.name = name
        self.attackValue = attack
        self.defenseValue = defense
    }
    
    func calculateAttack(opposingCard: Card) -> Int {
        return self.attackValue - opposingCard.defenseValue
    }
}
