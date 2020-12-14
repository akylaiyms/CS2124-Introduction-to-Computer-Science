//
//  Player.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    var deck: Deck
    var hand: [Card]
    var points: Int
    
    init (name: String) {
        self.name = name
        self.deck = Deck()
        self.hand = []
        self.points = 0
    }
    
    mutating func draw() {
        self.hand.append(self.deck.draw())
    }
    
    mutating func earnPoint() {
        self.points = self.points + 1
    }
    
    mutating func playCard(atIndex: Int) -> Card {
        //remove and return the card atIndex from hand
        return self.hand.remove(at: atIndex)
    }
    
    func displayHand() {
        for card in self.hand {
            print("Name: ", card.name, " attack: ", card.attackValue, " defense: ", card.defenseValue)
        }
    }
 
    
}
