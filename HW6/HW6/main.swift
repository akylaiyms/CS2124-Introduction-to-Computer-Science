//
//  main.swift
//  HW6
//
//  Created by Akylaiym Shergazy on 4/9/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation



var karaokeList=[String]()
print ("How many songs would you like to sing?")
let songcount = Int(readLine() ?? "0") ?? 0
print ("PLease enter the song you would like to sing:")
var personList=[String]()
for _ in (1...songcount) {
      personList.append (readLine() ?? "")
}

karaokeList+=personList
for song in karaokeList {
    print("The next song is ", song, "!!!")
}

karaokeList.removeAll()

print(karaokeList)



var list = [1,2,34,5,15,-7]
print (list)
func largestNumber(largestSofar: Int, currentNumber: Int) -> Int {
    for _ in list {
        if largestSofar>currentNumber {
            return largestSofar
        } else {
            return currentNumber
        }
    }
    return largestSofar
}
print ("The largest number is", list.reduce(Int.min, max))



class ActivityLog {
    let name: String
    let goal: Int
    init (name: String, goal: Int) {
        self.name = name
        self.goal = goal
    }

    var dailyLog = [Int] ()

    func enterNewData (log: Int) {
        dailyLog.append(log)
    }

    func goalMet(log: Int) -> Bool {
        if log>=goal {
            return true
        } else {
            return false
        }
    }

    func printMessage (log: Int) -> String {
        let difference = log-goal
        if difference >= 20 {
            return "You have surpassed your goal by approximately 20 minutes!"
        }
        if difference >= 10 {
            return  "You have surpassed your goal by approximately 10 minutes!"
        }
        if difference <= -10 {
            return "You haven't met your goal yet... You were short by approximately 10 minutes. "
        }
        if difference <= -20 {
            return "You haven't met your goal yet... You were short by approximately 20 minutes. "
        }
        return "You have successfully met your goal!"
    }
        
    func addLogs(first: Int, second: Int) -> Int {
        return first + second
    }
    
    func printOutStats() {
        print("Your progress towards your goal:", name)
        
        for log in dailyLog {
            print(log, "minutes were logged.", terminator: " ")
            print(printMessage(log: log))
        }
        
        print("You logged a total of ", dailyLog.reduce(0, +), "mins, with an average of ", Double(dailyLog.reduce(0, +)) / Double(dailyLog.count))
    
    }
    

}

let activityLog = ActivityLog(name: "Spend 30 minutes exercising!", goal: 30)

activityLog.enterNewData(log: 40)
activityLog.enterNewData(log: 30)
activityLog.enterNewData(log: 20)
activityLog.enterNewData(log: 60)
activityLog.enterNewData(log: 0)
activityLog.enterNewData(log: 45)
activityLog.printOutStats()

    

