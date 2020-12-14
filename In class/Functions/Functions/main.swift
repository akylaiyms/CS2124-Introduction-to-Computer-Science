//
//  main.swift
//  Functions
//
//  Created by Akylaiym Shergazy on 3/6/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

func countDownFrom10() {
    for number in (1...10).reversed() {
        print(number)
    }
}
countDownFrom10()

func countDown(from startingNumber: Int) {
    for number in (1...startingNumber).reversed() {
        print(number)
    }
}
countDown(from : 20)



func greet( _ name : String) {
    print ("Hello \(name)")
}
greet("Ako")



print ("Enter your separator:")
let separator = readLine()!
print ("Hello " , "there ", 435, separator: separator)

for _ in (0..<5) {
    print("*", terminator: "")
}
print ()


