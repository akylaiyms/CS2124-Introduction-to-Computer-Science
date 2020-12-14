//
//  main.swift
//  HW5
//
//  Created by Akylaiym Shergazy on 3/31/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

struct Sun {
    var gravity: Int // 274 m/s^2
    var age: Int //4500000000 years old
    var temperature: Int //27000000 degrees Farenheit

    func holds() {
        //the gravity of the Sun holds the planets in the Solar System together
        //if the gravity of the Sun goes less that 274 m/s^2 the Solar System collapses
    }
    func dies () {
        // the Sun will run out if its energy and die in 6.5 billion years
        // if the Sun dies, the Earth dies too
    }
    func heats () {
        // with its temperature of 27 million degrees Farenheit it gave life on Earth
        // if the temperature of the sun goes less than 16 million degrees Farenheit the Earth dies
    }
}
let SunofEarth = Sun(gravity: 274, age: 6500000000, temperature: 27000000)
print (SunofEarth)




struct Date {
    var month: Int
    var day: Int
    var year: Int
    
    func asShortString() -> String {
        let monthString = String(month)
        let dayString = String(day)
        let yearString = String(year % 100)
        
        return monthString + "/" + dayString + "/" + yearString
    }
    
    func asLongString() -> String {
        let dayString = String(day)
        let yearString = String(year)
        
        let months = ["Jan", "Feb", "March", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"]
        
        return months[month - 1] + " " + dayString + ", " + yearString
    }
    
    func dateAfter(days: Int) -> Date {
        let newDate = Date(month: month, day: day + days, year: year)
        return newDate
    }
}



let todaysDate = Date(month: 6, day: 20, year: 1999)
print (todaysDate.asShortString())
print (todaysDate.asLongString())
let oneWeekLate = todaysDate.dateAfter(days: 7)
print (oneWeekLate.asLongString())


