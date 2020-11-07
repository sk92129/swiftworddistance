//
//  main.swift
//  swiftworddistance
//
//  Created by Sean Kang on 11/6/20.
//

import Foundation

var finder = WordDistanceFinder(wordlist: ["the", "quick", "brown", "fox", "quick"])

let dist1 = finder.distance(word1: "fox", word2: "the")
print(dist1)
let dist2 = finder.distance(word1: "quick", word2: "fox")
print(dist2)
