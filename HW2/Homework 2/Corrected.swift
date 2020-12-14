//
//  main.swift
//  IdentifyAndCorrectErrors
//
//  Created by Akylaiym Shergazy on 3/1/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

let age = Int(readLine()!) ?? 0

if age >= 65 {
    print ("You're", age, "? You don't look a day over 20")}
else if age < 13 {
    print ("Did you ask your parents if you are allowed to use the computer?")
}

var x = 1
var total = 0

while x <= 10 {
    total += x
    x += 1
}
print(total)

var y = 10
while y > 0 {
    print(y)
    y -= 1
}



