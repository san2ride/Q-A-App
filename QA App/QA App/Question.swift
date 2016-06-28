//
//  Question.swift
//  QA App
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class Question: NSObject {

    var question: String
    var answer: String
    
    init(question: String, answer: String) {
        
        self.question = question
        self.answer = answer
            
    }
    
}
