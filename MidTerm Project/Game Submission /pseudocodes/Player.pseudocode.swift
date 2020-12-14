//
//  Player.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Player {
    let name: String
    private var deck: Deck = Deck ()
    private var hand: [Card] = []
    private var points: Int = 0
    
    init (withName: String) {
        //setup name
        //name=self.name
    }
    
    func draw() {
        //player draws Cards from Deck
    }
    
    mutating func earnPoint() {
        points = points + 1
    }
    
    func playCard(atIndex: Int) -> Card? {
        //remove and return the card atIndex from hand
    }
    
    func displayHand() {
        //for card in hand {
        //print(card?.description?? "No Card")
        //}
    }
 
    
}
