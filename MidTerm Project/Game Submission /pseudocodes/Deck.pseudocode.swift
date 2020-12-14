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
    cards = []
        let healingCard = Card (withName: "Healing Card", attack: 0, defense: 9)
        let attackCard = Card (withName: "Atack Card", attack: 14, defense: 7)
        let defenseCard = Card (withName: "Defense Card", attack: 4, defense: 15)
        let championCard = Card (withName: "Champion Card", attack: 15, defense: 15)
        
        cards += [Card](repeating: healingCard, count: 7)
        cards += [Card](repeating: attackCard, count: 10)
        cards += [Card](repeating: defenseCard, count: 10)
        cards += [Card](repeating: championCard, count: 3)
        
    }
    
    func shuffle() {
        
    }
    
    mutating func draw () -> Card? {
        return cards.remove(at: 0)
    }
    
}
