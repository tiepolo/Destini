//
//  Story.swift
//  Destini
//
//  Created by Nigel Yoshida on 1/18/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Chapter {
    let storyText : String
    let answerA : String
    let answerB : String
    
    init(text: String, answer1: String, answer2: String) {
        storyText = text
        answerA = answer1
        answerB = answer2
    }
}
