
//  main.swift
//  Homework 3.1
//
//  Created by Akylaiym Shergazy on 3/8/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.


import Foundation

var y : Int
var x = 1 // multiplication starts with 1
var total = 0
while x <= 10 { //the loop will keep running until x is greater than 10
    y = x * x // first x=1, so it's 1*1=1
    print (y) // and the program prints the sum
    total += y
    x += 1 // then x is increased by 1, it is now 2*2=4, then it prints the sum, then x increases again, which is 3*3=9 and so on until x is greater than 10
}
print ("The total is : \(total)") // at the end  it prints the sum of all the multiplications



func myLoop() {
    var totalNew = 0

    for x in (1...10){
        totalNew += x * x
    }

    print("The new total is : \(totalNew)")
}

myLoop()



//PSEUDOCODE
//ask the user to enter any number between 1 and 20
//take the number from the user
//convert the number into integer, which will be n
//start a for loop that will be running n times
//print * n times, in a row
//close the loop
//print nothing "" to proceed to a next line
//open new loop for other lines (rows) beside the last one, the number of lines printed will be n-2
//print * n-2 times in a row
//open another loop inside of previous loop that will be printing columns (empty spaces)the n-2 times
//print " ", empty spaces n-2 times, in a row
//close the inside loop
//print *
//close the loop
//start a loop for the last row that will print * n times
//print * n times, all in a row
//print nothing "" to proceed to a next line

print ("Please enter a number between 1 and 20:")
let input = readLine()!
let n = Int(input) ?? 0

for _ in (1...n) {
    print ("*", terminator:"" )
}
print ("")

for _ in (1...n-2){ //rows
    print ("*", terminator:"")
    for _ in (1...n-2) { //columns
        print (" ", terminator:"")
    }
    print ("*")
}

for _ in (1...n) {
    print ("*", terminator:"" )
}
print ("")



//PSEUDOCODE
//give value to maximumValue which is 0, var because it would be changing
//ask the user to print 10 numbers
//open for loop that would be asking for a number 10 times
//give value to the numbers entered, convert them to integers
//if the number entered is greater than maximum value
//the number becomes the maximum value
//every time the new number comes in, the program will be comparing it to the maximum value, and if it is greater than the maximumValue - it will become it, until it goes through all 10 numbers
//print the maximum value



var maximumValue = 0
print ("Please enter any 10 numbers, but press 'Enter' key after each of the numbers!")
for _ in (1...10) {
    print ("Enter the number:")
    let number = Int (readLine()!) ?? 0
    if number > maximumValue {
        maximumValue = number
    }
}
print ("The maximum value is : \(maximumValue)")
