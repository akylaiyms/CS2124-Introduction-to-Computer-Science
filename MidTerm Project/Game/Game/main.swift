//
//  main.swift
//  Game
//
//  Created by Akylaiym Shergazy on 4/7/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Card {
    let name: String
    let attack: Int
    let defense: Int
}

struct Deck {
    var cards: [Card]
    
    init() {
    cards  = []
        
        let healingCard = Card (name: "Healing Card", attack: 0, defense: 9)
        let attackCard = Card (name: "Atack Card", attack: 14, defense: 7)
        let defenseCard = Card (name: "Defense Card", attack: 4, defense: 15)
        let championCard = Card (name: "Champion Card", attack: 15, defense: 15)
        
        cards += [Card](repeating: healingCard, count: 7)
        cards += [Card](repeating: attackCard, count: 10)
        cards += [Card](repeating: defenseCard, count: 10)
        cards += [Card](repeating: championCard, count: 3)
        }

        mutating func draw () -> Card? {
            return cards.remove(at: 0)
            }

        mutating func shuffle() {
        
        }
}

struct Player {
    var name: String
    var hand: [Card] = []
    var deck: Deck = Deck()
    var score: Int = 0
    
    init(withName name: String, addNumberOfCards numCards: Int) {
        
    }
    
    func playCard (atIndex: Int) -> Card? {
        
    }
    
}

var deck = Deck()
let topcard = deck.draw()
print(topcard ?? "No card")
