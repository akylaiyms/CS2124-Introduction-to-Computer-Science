//
//  main.swift
//  May 2
//
//  Created by Akylaiym Shergazy on 5/2/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

//var luckyNumbers = ["Ako" : 31, "Justin" : 83, "Zak" : 28]
//if let akosLuckyNumber = luckyNumbers["Ako"] {
//    print ("Ako's lucky number is \(akosLuckyNumber)")
//} else {
//    print("Couldn't find the number")
//}
//
//luckyNumbers["Aida"] = 16
//
//if let aidasLuckyNumber = luckyNumbers["Aida"] {
//    print ("Aida's lucky number is \(aidasLuckyNumber)")
//} else {
//    print("Couldn't find Aida's number")
//}

// read in textFile, and return an array of words from that text file
func readWordsFromFile(filename: String) -> [String] {
    guard let path = Bundle.main.path(forResource: filename, ofType: "txt") else {
        fatalError()
    }

    let url = URL(fileURLWithPath: path)
    let inputText = (try? String(contentsOf: url)) ?? "No file found"

    let words = inputText.lowercased().components(separatedBy: .whitespacesAndNewlines)
    return words
}

// take the array of words and generate a dictionary of wordProbabilities
func generateWordProbabilities(words: [String]) -> [String: Double] {
    var wordCountDictionary = [String:Int] ()
    for word in words {
        let currentWordCount = wordCountDictionary[word] ?? 0
        wordCountDictionary[word] = currentWordCount + 1
    }
    
    let totalNumberOfWords = words.count
    var wordProbabilities = [String:Double]()
    for (word, count) in wordCountDictionary {
        wordProbabilities[word] = Double(count)/Double(totalNumberOfWords)
    }
    return wordProbabilities
}

func randomWord(wordProbabilityDictionary : [String: Double]) -> String {
    let randomNumber = Double.random(in: 0..<1)
    var sumSoFar : Double = 0
    for (word, probability) in wordProbabilityDictionary {
        sumSoFar += probability
        if sumSoFar > randomNumber {
            return word
        }
    }
    return "Nothing"
}

func generateSentence(wordProbabilityDictionary: [String:  Double]) -> String {
    var stringToReturn = ""
    for _ in 0..<10 {
        stringToReturn += randomWord(wordProbabilityDictionary: wordProbabilityDictionary) + " "
    }
    return stringToReturn
}

let inputTextWords = readWordsFromFile(filename: "shakespeare")
let wordProbability = generateWordProbabilities(words: inputTextWords)
print(generateSentence(wordProbabilityDictionary: wordProbability))


