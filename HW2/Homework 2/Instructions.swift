//
//  main.swift
//  Homework 2
//
//  Created by Akylaiym Shergazy on 3/1/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

print("What is the room temperature?")

let answer1 = readLine()!
let temperature = Int(answer1) ?? 0

if temperature<30 {
    print("Please, close the window.")
} else if temperature>70 {
    print("Please open the window for a while.")
} else {
    print("It is perfect! Thank you!")
}

print("When was the last time you watered the plants?")

let answer2 = readLine()!
let water = Int(answer2) ?? 0

if water>2 {
    print("Please, water my plants.")
} else if water<2 {
    print("You are lovely! Thanks for taking cafe of my plants!")
}

print("Please check the kitchen sink for any used dishes. Do you see any?")
var answer3 = readLine()!

if answer3 == "yes" {
    print("Please put the dishes into dishwasher.")
} else if answer3 == "no" {
    print("You are amazing!")
}

print("Did you turn the lights off on your way out?")
var answer4 = readLine()!

if answer4 == "yes" {
    print("You are the best! Thank you for looking after my place! Have a wonderful day!")
} else if answer4 == "no" {
    print("I would appreciate if you turn them off, thank you! Have a great day!")
}
