//
//  main.swift
//  28
//
//  Created by Akylaiym Shergazy on 2/28/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

print("Guess the number!")

let secretNumber = Int.random(in: 1 ..< 100)
print("Enter any number between 1 and 100" )
var input = Int(readLine()!) ?? 0

while input < secretNumber {
    print("The guess is low, try again! ")
    input = Int(readLine()!) ?? 0
}

while input > secretNumber {
    print("The guess is high, try again!")
    input = Int(readLine()!) ?? 0
}

if input == secretNumber {
    print("You got it! The guess is correct!   GAME IS OVER")
}

