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
        
        let healingCard = Card (name: "Healing Card", attack: 0, defense: 9)
        let attackCard = Card (name: "Atack Card", attack: 14, defense: 7)
        let defenseCard = Card (name: "Defense Card", attack: 4, defense: 15)
        let championCard = Card (name: "Champion Card", attack: 15, defense: 15)

        self.cards += [Card](repeating: healingCard, count: 7)
        self.cards += [Card](repeating: attackCard, count: 10)
        self.cards += [Card](repeating: defenseCard, count: 10)
        self.cards += [Card](repeating: championCard, count: 3)
    }
    
    func draw () -> Card {
        let randomIndex = Int.random(in: 0..<30)
        return self.cards[randomIndex]
    }
    
}

