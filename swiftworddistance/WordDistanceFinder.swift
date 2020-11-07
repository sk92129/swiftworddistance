//
//  WordDistanceFinder.swift
//  swiftworddistance
//
//  Created by Sean Kang on 11/6/20.
//

import Foundation


class WordDistanceFinder {
    
    private var wordList: [String]

    init(wordlist: [String]) {
        self.wordList = wordlist
    }
    
    func distance(word1: String, word2: String) -> Int {
        if word1 == word2 {
            return 0
        }
        var index = 0
        var word1Index = [Int]()
        var word2Index = [Int]()
        for eachword in wordList {
            if eachword == word1{
                word1Index.append(index)
            }
            if eachword == word2 {
                word2Index.append(index)
            }
            index += 1
        }
        if word1Index.count == 0 || word2Index.count == 0 {
            return -1
        }
        var distance: Int = Int.max
        for xindex in 0..<word1Index.count {
            let valuei = word1Index[xindex]
            for yindex in 0..<word2Index.count {
                let valuej = word2Index[yindex]
                var diff : Int = 0
                if (valuej > valuei) {
                    diff = valuej - valuei
                } else {
                    diff = valuei - valuej
                }
                if diff < distance {
                    distance = diff
                }
            }
        }
        
        
        
        
        return distance
    }
}
