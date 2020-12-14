//
//  main.swift
//  Homework 4
//
//  Created by Akylaiym Shergazy on 3/16/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

func print1() {
    print (1,2,3,4)
}

print1() // + quite straightforward and simple
         // - limited variations


func print2() {
    print (1, terminator: " ")
    print (2, terminator: " ")
    print (3, terminator: " ")
    print (4, terminator: " ")
}

print2()  // + straightforward and simple
          // - redundancy

print ("")

func print3(){
    for i in (1...4) {
        print (i, terminator: " ")
    }
}
print3() // + short and neat
         // - can't think of any lol

print ("")

print ("Please enter any 3 numbers: ")

let number1 = Int(readLine()!) ?? 0
let number2 = Int(readLine()!) ?? 0
let number3 = Int(readLine()!) ?? 0
let numbers = [number1, number2, number3]

func printStatsFor () {
    print ("The sum is: ", number1 + number2 + number3)
    print ("The average is: ", (number1 + number2 + number3)/3 )
    print ("The product is: ", number1 * number2 * number3)
    print ("The smallest number is: ", numbers.min()!)
    print ("The largest number is: ", numbers.max()!)
}

printStatsFor()



func odd(number: Int) -> Bool {
    return number % 2 != 0
}

print (odd(number: 3))
print (odd(number: 6))


func printSquaresAndCubesTable(number: Int) {
    for i in (1...number) {
    print (i," ", i*i," ", i*i*i)
    }
}
printSquaresAndCubesTable(number: 5)


func raise(number: Int, exponent: Int) ->Int {
    var result = 1
    for _ in (1...exponent) {
        result = result * number
    }
    return result
}

print (raise(number: 2, exponent: 4))


func reversed (number: Int) -> Bool {

    let digitFive = number % 10
    var number = number / 10

    let digitFour = number % 10
    number = number / 10

    number = number / 10

    let digitTwo = number % 10
    number = number / 10

    let digitOne = number % 10

    if digitOne == digitFive && digitFour == digitTwo {
        return true
    }
    return false
}

print (reversed(number: 11111))



func printTriangles(height: Int) {
    for i in 1...height {
        for _ in 1...i {
            print("*", terminator:"")
        }
        print(" ")
    }

    print (" ")

    for i in 1...height {
        for _ in 1...height-i+1 {
            print("*", terminator:"")
        }
        print(" ")
    }

    print (" ")

    for i in 1...height {
        for _ in 0..<i - 1{
            print(" ", terminator:"")
        }
        for _ in 1...height - i + 1 {
            print("*", terminator:"")
        }
        print (" ")
    }

    print (" ")

    for i in 1...height {
        for _ in 0..<height - i{
            print(" ", terminator:"")
        }
        for _ in 1...i {
            print("*", terminator:"")
        }
        print (" ")
    }

}

printTriangles(height: 5)

print ("")

func checkerBoard() {
    for _ in 1...8 {
        print ("*", terminator: " ")
    }
    
    print("")
    
    for _ in 1...9 {
        print (" ", terminator: "*")
    }
    
    print("")
}
for _ in 1...4 {
    checkerBoard()
}
