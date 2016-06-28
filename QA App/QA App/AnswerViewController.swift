//
//  AnswerViewController.swift
//  QA App
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    
    
    @IBOutlet weak var ans1Button: UIButton!
    
    @IBOutlet weak var ans2Button: UIButton!
    
    @IBOutlet weak var ans3Button: UIButton!
    
    @IBOutlet weak var ans4Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let quest = self.theQuestion {
//            self.answersArray?.text = quest.question
//        }

//        let quest5 = Answer(answer: "6")
//        self.answersArray.append(quest5)
//        
//        let quest6 = Answer(answer: "5")
//        self.answersArray.append(quest6)
//        
//        let quest7 = Answer(answer: "4")
//        self.answersArray.append(quest7)
//        
//        let quest8 = Answer(answer: "3")
//        self.answersArray.append(quest8)
//        
//    }
//    
////    @IBAction func addButton(sender: AnyObject) {
////        
////        let alert = UIAlertController(title: "Add Name", message: "Add a new name", preferredStyle: .Alert)
////        
////        let saveAction = UIAlertAction(title: "Save",
////                                       style: .Default,
////                                     handler: {
////                                            
////            (action) in
////                                            
////            if let textField = alert.textField?.first {
////                
////                if let name = textField.text {
////                    print(name)
////                }
////            }
////        })
////        
////        alert.addAction(saveAction)
////        
////        let cancelAction = UIAlertAction(title: "Cancel",
////                                         style: .Default) {
////                                          (actiion) in
////        
////        }
////    
////        alert.addAction(cancelAction)
////    
////        alert.addTextFieldWithConfigurationHandler {
////            (textField) in
////    
////            textField.placeholder = "Please enter your name"
////    
////        }
////    
////        self.presentViewController(alert, animated: true, completion: nil)
////    
////    }
//
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.answersArray.count
//        
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath)
//        
//        let a = self.answersArray[indexPath.row]
//            
//            cell.textLabel?.text = a.answer
//        
//            return cell
//    
//

    }
}
