//
//  FactBook.swift
//  FunnyFacts
//
//  Created by Sam Bowen on 1/24/15.
//  Copyright (c) 2015 CodeSling. All rights reserved.
//

import Foundation

struct FactBook {

    let factsArray = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an aduilt you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Monday is the only day of the week that has an anagram:  dynamo",
        "It takes 10 pounds of milk to make one pound of cheese.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Lions and Tigers can't purr.  Cougars can.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built.",
        "Odontophobia is the fear of teeth",
        "The 57 on Heinz ketchup bottles represents the varieties of pickles the company once had",
        "Karoke means empty orchestra in Japanese",
        "The first person selected as the Time Magazine Man of the Year - Charles Lindbergh in 1927",
        "The king of hearts is the only king without a moustache."
    ]

    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)

        return factsArray[randomNumber]
    }




}
