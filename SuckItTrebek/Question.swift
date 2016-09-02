//
//  Question.swift
//  SuckItTrebek
//
//  Created by Ross Gottschalk on 9/2/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation
class Question
{
    let singleQuestion: String
    let singleAnswer: String
    
    init(questionDict: [String: AnyObject])
    {
        singleQuestion = questionDict["singleQuestion"] as! String
        singleAnswer = questionDict["singleAnswer"] as! String
    }
}