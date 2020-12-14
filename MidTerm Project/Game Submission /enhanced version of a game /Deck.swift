//
//  Deck.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Deck {
    private var cards: [Card]
    
    init() {
        self.cards = []
        self.cards += [Card] (repeating: DefenseCard(attackValue: 4, defenseValue: 15), count: 10)
        self.cards += [Card] (repeating: AttackCard(attackValue: 14, defenseValue: 6), count: 10)
        self.cards += [Card] (repeating: HealingCard(attackValue: 2, defenseValue: 16), count: 7)
        self.cards += [Card] (repeating: ChampionCard(attackValue: 17, defenseValue: 15), count: 3)
        self.cards += [Card] (repeating: KingCard(attackValue: 20, defenseValue: 17), count: 3)
        self.cards += [Card] (repeating: QueenCard(attackValue: 20, defenseValue: 20), count: 3)
    }
    
    func draw () -> Card {
        let randomIndex = Int.random(in: 0..<36)
        return self.cards[randomIndex]
    }
    
}

