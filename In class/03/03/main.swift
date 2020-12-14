//
//  main.swift
//  03
//
//  Created by Akylaiym Shergazy on 3/3/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

let inputString = readLine()!

var hasWhitespace = false
for character in inputString
{
    if character.isWhitespace {
        hasWhitespace = true
    }
}
print (hasWhitespace)


var hasUppercase = false
for character in inputString
{
   if character.isUppercase {
        hasUppercase = true
    }
}
print (hasUppercase)



