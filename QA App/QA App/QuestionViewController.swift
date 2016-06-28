//
//  QuestionViewController.swift
//  QA App
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var questionsArray = [Question]()
    var currentQuestion: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quest1 = Question(question: "How many Super Bowls, Pittsburgh Steelers?")
        self.questionsArray.append(quest1)
        
        let quest2 = Question(question: "How many Super Bowls, Dallas Cowboys?")
        self.questionsArray.append(quest2)
        
        let quest3 = Question(question: "How many Super Bowls, New England Patriots")
        self.questionsArray.append(quest3)
        
        let quest4 = Question(question: "How many Super Bowls, Denver Broncos?")
        self.questionsArray.append(quest4)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let q = self.questionsArray[indexPath.row]
        
        cell.textLabel?.text = q.question
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentQuestion = self.questionsArray[indexPath.row]
        
        self.performSegueWithIdentifier("AnswerSegue", sender: nil)
        
    }
    
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        let controller = segue.destinationViewController as? AnswerViewController
//        
//        }
    
}
