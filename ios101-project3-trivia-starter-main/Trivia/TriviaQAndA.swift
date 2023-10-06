//
//  TriviaQAndA.swift
//  Trivia
//
//  Created by Gabriella Codrington on 10/5/23.
//

import Foundation

struct TriviaQAndA {
    let questionNumber: questionNumber
    let category: category
    let question: question
    let multipleChoiceOne: multipleChoiceOne
    let multipleChoiceTwo: multipleChoiceTwo
    let multipleChoiceThree: multipleChoiceThree
    let multipleChoiceFour: multipleChoiceFour
}

enum questionNumber {
    case one
    case two
    case three
    
    var number: String {
        switch self{
        case .one:
            return "Question 1/3"
        case .two:
            return "Question 2/3"
        case .three:
            return "Question 3/3"
        }
    }
}

enum category {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "Entertainment: Video Games"
        case .two:
            return "History"
        case .three:
            return "Entertainment: Music"
        }
    }
}

enum question {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "What was the first weapon pack for 'PAYDAY'?"
        case .two:
            return "Which of these founding fathers of the United States of America later became president?"
        case .three:
            return "What is the last song on the first Panic! At the Disco album?"
        }
    }
}

enum multipleChoiceOne {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "The Gage Weapon Pack #1"
        case .two:
            return "Roger Sherman"
        case .three:
            return "I Write Sins Not Tragedies"
        }
    }
}

enum multipleChoiceTwo {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "The Overkill Pack"
        case .two:
            return "James Monroe"
        case .three:
            return "Lying is The Most Fun A Girl Can Have Without Taking Her Clothes Off"
        }
    }
}

enum multipleChoiceThree {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "The Gage Chivalry Pack"
        case .two:
            return "Samuel Adams"
        case .three:
            return "Nails for Breakfast, Tacks for Snacks"
        }
    }
}

enum multipleChoiceFour {
    case one
    case two
    case three
    
    var description: String {
        switch self{
        case .one:
            return "The Gage Historical Pack"
        case .two:
            return "Alexander Hamilton"
        case .three:
            return "Build God, Then We'll Talk"
        }
    }
}


