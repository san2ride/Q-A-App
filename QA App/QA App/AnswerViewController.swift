//
//  AnswerViewController.swift
//  QA App
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var passQuestion: Question?
    var randomNumber: UInt32 = 0
    
    @IBOutlet weak var qstringLabel: UILabel!
    @IBOutlet weak var ans1Button: UIButton!
    @IBOutlet weak var ans2Button: UIButton!
    @IBOutlet weak var ans3Button: UIButton!
    @IBOutlet weak var ans4Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    self.randomNumber = arc4random_uniform(4) + 1
        print("The randomNuber is\(self.randomNumber)")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.qstringLabel.text = passQuestion?.question
        
        self.setupButtons()
    }
    
    func setupButtons() {
        
        self.ans1Button.setTitle("Answer 1", forState: .Normal)
        self.ans2Button.setTitle("Answer 2", forState: .Normal)
        self.ans3Button.setTitle("Answer 3", forState: .Normal)
        self.ans4Button.setTitle("Answer 4", forState: .Normal)
        
        switch(randomNumber) {
            case 1: self.ans1Button.setTitle(passQuestion?.answer, forState: .Normal)
            case 2: self.ans2Button.setTitle(passQuestion?.answer, forState: .Normal)
            case 3: self.ans3Button.setTitle(passQuestion?.answer, forState: .Normal)
            default: self.ans4Button.setTitle(passQuestion?.answer, forState: .Normal)
        }
        
        if randomNumber == 1 {
            self.ans1Button.setTitle(passQuestion?.answer, forState: .Normal)
        } else if randomNumber == 2 {
            self.ans2Button.setTitle(passQuestion?.answer, forState: .Normal)
        } else if randomNumber == 3 {
            self.ans3Button.setTitle(passQuestion?.answer, forState: .Normal)
        } else {
            self.ans4Button.setTitle(passQuestion?.answer, forState: .Normal)
        }
    }
        
    func doAlert(title: String) {
            
        let alert = UIAlertController(title: title, message: title, preferredStyle: .Alert)
            
            
        let okAction = UIAlertAction(title: "Ok", style: .Default, handler: nil)
            
            
        alert.addAction(okAction)
            
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
        
    
    @IBAction func ans1ButtonTapped(sender: UIButton) {
        
        print("ans1ButtonTapped")
        
        if randomNumber == 1 {
            self.doAlert("Correct")
        } else {
            self.doAlert("InCorrect!")
        }

    }
    
    
    @IBAction func ans2ButtonTapped(sender: UIButton) {
        
        print("ans2ButtonTapped")
        
        if randomNumber == 2 {
            self.doAlert("Correct")
        } else {
            self.doAlert("InCorrect!")
        }

    }
    
    @IBAction func ans3ButtonTapped(sender: UIButton) {
        
        print("ans3ButtonTapped")
        
        if randomNumber == 3 {
            self.doAlert("Correct")
        } else {
            self.doAlert("InCorrect!")
        }

    }
    
    
    @IBAction func ans4ButtonTapped(sender: UIButton) {
        
        print("ans4ButtonTapped")
        
        if randomNumber == 4 {
            self.doAlert("Correct")
        } else {
            self.doAlert("InCorrect!")
        }

    }
    
}
