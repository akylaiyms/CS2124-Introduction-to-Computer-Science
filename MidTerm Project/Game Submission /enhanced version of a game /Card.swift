//
//  Card.swift
//  MidTerm Project
//
//  Created by Akylaiym Shergazy on 4/25/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

protocol Card {
    var attackValue: Int { get set }
    var defenseValue: Int {get set }
    var name: String { get }
    
    var description: String { get }
    func calculateAttack(against opposingCard: Card) -> Int
}


struct ChampionCard : Card {
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "Champion Card"
    }
    var description: String {
        return "A Champion Card with attack: \(attackValue) and defense: \(defenseValue)"
    }
    
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}

struct DefenseCard : Card {
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "Defense Card"
    }
    var description: String {
        return "A Defense with attack: \(attackValue) and defense: \(defenseValue)"
    }
    
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}

struct AttackCard : Card {
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "Attack Card"
    }
    var description: String {
        return "An Attack Card with attack: \(attackValue) and defense: \(defenseValue)"
    }
    
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}

struct HealingCard : Card {
    
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "Healing Card"
    }
    var description: String {
         return "A Healing Card with attack: \(attackValue) and defense: \(defenseValue)"
    }
    
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}

struct KingCard : Card {
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "King Card"
    }
    var description: String {
        return "A King Card with attack: \(attackValue) and defense: \(defenseValue)"
    }
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}

struct QueenCard : Card {
    var attackValue: Int
    var defenseValue: Int
    var name: String {
        return "Queen Card"
    }
    var description: String {
        return "A Queen Card with attack: \(attackValue) and defense: \(defenseValue)"
    }
    func calculateAttack(against opposingCard: Card) -> Int {
        return attackValue - opposingCard.defenseValue
    }
}
