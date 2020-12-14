//
//  main.swift
//  May 2
//
//  Created by Akylaiym Shergazy on 5/2/20.
//  Copyright © 2020 Akylaiym Shergazy. All rights reserved.
//

import Foundation

// read in textFile, and return an array of words from that text file
func readWordsFromFile(filename: String) -> [String] {
    guard let path = Bundle.main.path(forResource: filename, ofType: "txt") else {
        fatalError()
    }

    let url = URL(fileURLWithPath: path)
    let inputText = (try? String(contentsOf: url)) ?? "No file found"
    
    let sentences = inputText.lowercased().components(separatedBy: .newlines)
    var words = [String]()
    for sentence in sentences {
        let sentenceWithTags = "BOS " + sentence + " EOS"
        words += sentenceWithTags.components(separatedBy: .whitespaces)
    }
    
    return words.filter(stringHasSubstance)
}

func stringHasSubstance(string: String) -> Bool {
    if string.count > 0 {
        return true
    }
    return false
}

// take the array of words and generate a dictionary of wordProbabilities
func generateWordCounts(words: [String]) -> [String: Int] {
    var wordCountDictionary = [String:Int] ()
    for word in words {
        let currentWordCount = wordCountDictionary[word] ?? 0
        wordCountDictionary[word] = currentWordCount + 1
    }
    return wordCountDictionary
}

func generateBigramCounts(words: [String]) -> [String: [String: Int]] {
    var bigramCountDictionary = [String: [String: Int]]()
    for index in 0..<(words.count - 1) {
        let firstWord = words[index]
        let secondWord = words[index + 1]
        if bigramCountDictionary.keys.contains(firstWord) {
            let currentBigramCount = bigramCountDictionary[firstWord]?[secondWord] ?? 0
            bigramCountDictionary[firstWord]?[secondWord] = currentBigramCount + 1
        } else {
            bigramCountDictionary[firstWord] = [secondWord: 1]
        }
    }
    return bigramCountDictionary
}
    
func generateWordProbabilities(wordCountDictionary: [String: Int], numWords: Int) -> [String: Double] {
    var wordProbabilities = [String:Double]()
    for (word, count) in wordCountDictionary {
        wordProbabilities[word] = Double(count)/Double(numWords)
    }
    return wordProbabilities
}

func generateBigramProbabilities(bigramCountDictionary: [String: [String: Int]], unigramCountDictionary: [String: Int]) -> [String: [String: Double]] {
    //Count(fullBigram)/Count(firstWord)
    var bigramProbabilities = [String: [String:Double]]()
    for (firstWord, secondWordCounts) in bigramCountDictionary {
        bigramProbabilities[firstWord] = [:]
        for (secondWord, _) in secondWordCounts {
            let fullBigramCount = bigramCountDictionary[firstWord]?[secondWord] ?? 0
            let firstWordCount = unigramCountDictionary[firstWord] ?? -1
            let probability = Double(fullBigramCount) / Double(firstWordCount)
            bigramProbabilities[firstWord]?[secondWord] = probability
        }
    }
    return bigramProbabilities
}

func generateRandomWord(wordProbabilityDictionary : [String: Double]) -> String {
    let randomNumber = Double.random(in: 0..<1)
    var sumSoFar : Double = 0
    for (word, probability) in wordProbabilityDictionary {
        sumSoFar += probability
        if sumSoFar > randomNumber {
            return word
        }
    }
    return "EOS"
}

func generateRandomWord(after firstWord: String, bigramProbabilityDictionary: [String: [String: Double]] ) -> String {
    guard let probabilityDictionary = bigramProbabilityDictionary[firstWord] else {
        return "EOS"
    }
    
    let randomNumber = Double.random(in: 0..<1)
    var sumSoFar: Double = 0
    for (word, probability) in probabilityDictionary {
        sumSoFar += probability
        if sumSoFar > randomNumber {
            return word
        }
    }
    return "EOS"
}

func generateUnigramSentence(wordProbabilityDictionary: [String:  Double]) -> String {
    var stringToReturn = ""
    var randomWord = generateRandomWord(wordProbabilityDictionary: wordProbabilityDictionary)
    while randomWord != "EOS" {
        if randomWord != "BOS" {
            stringToReturn += randomWord + " "
        }
        randomWord = generateRandomWord(wordProbabilityDictionary: wordProbabilityDictionary)
    }
    return stringToReturn
}

func generateBigramSentence(bigramProbabilityDictionary: [String: [String: Double]]) -> String {
    var stringToReturn = ""
    var randomWord = generateRandomWord(after: "BOS", bigramProbabilityDictionary: bigramProbabilityDictionary)
    while randomWord != "EOS" {
        stringToReturn += randomWord + " "
        randomWord = generateRandomWord(after: randomWord, bigramProbabilityDictionary: bigramProbabilityDictionary)
    }
    return stringToReturn
}


let inputTextWords1 = readWordsFromFile(filename: "shakespeare")
//print(inputTextWords1)
let wordCounts1 = generateWordCounts(words: inputTextWords1)
let wordProbabilities1 = generateWordProbabilities(wordCountDictionary: wordCounts1, numWords: inputTextWords1.count)
//print(wordProbabilities1)
//print(generateUnigramSentence(wordProbabilityDictionary: wordProbabilities1))
print("5 random Unigram Sentences from Shakespeare:")
for _ in (1...5) {
    print(generateUnigramSentence(wordProbabilityDictionary: wordProbabilities1))
}

print("---------------------")

let bigramCounts1 = generateBigramCounts(words: inputTextWords1)
let bigramProbabilities1 = generateBigramProbabilities(bigramCountDictionary: bigramCounts1, unigramCountDictionary: wordCounts1)
//print(bigramProbabilities1)
//print(generateBigramSentence(bigramProbabilityDictionary: bigramProbabilities1))
print ("5 Random Bigram Sentences from Shakespeare:")
for _ in (1...5) {
    print(generateBigramSentence(bigramProbabilityDictionary: bigramProbabilities1))
}

print("---------------------")

let inputTextWords2 = readWordsFromFile(filename: "conandoyle")
//print(inputTextWords2)
let wordCounts2 = generateWordCounts(words: inputTextWords2)
let wordProbabilities2 = generateWordProbabilities(wordCountDictionary: wordCounts2, numWords: inputTextWords2.count)
//print(wordProbabilities2)
//print(generateUnigramSentence(wordProbabilityDictionary: wordProbabilities2))
print("5 random Unigram Sentences from Conan Doyle:")
for _ in (1...5) {
    print(generateUnigramSentence(wordProbabilityDictionary: wordProbabilities2))
}

print("---------------------")

let bigramCounts2 = generateBigramCounts(words: inputTextWords2)
let bigramProbabilities2 = generateBigramProbabilities(bigramCountDictionary: bigramCounts2, unigramCountDictionary: wordCounts2)
//print(bigramProbabilities2)
//print(generateBigramSentence(bigramProbabilityDictionary: bigramProbabilities2))
print ("5 Random Bigram Sentences from Conan Doyle:")
for _ in (1...5) {
    print(generateBigramSentence(bigramProbabilityDictionary: bigramProbabilities2))
}
