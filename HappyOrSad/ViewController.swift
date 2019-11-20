//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Chen, Sihan on 2019-11-18.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputMessage: UITextField!
    @IBOutlet weak var outputText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func analyzeMood(_ sender: Any) {
        
        guard let inputMessageAsString = inputMessage.text, inputMessageAsString != "" else {
            outputText.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
        }
        
        
        if inputMessageAsString.count >= 255 {
            outputText.text = "Please enter a string with at least 1 and no more than 255 characters."
        }
        var sadMoodValue = 0
        var happyMoodValue = 0
        for scalars in inputMessageAsString.unicodeScalars {
            let scalarValues = scalars.value
            var scalarValuesAsString = String(scalarValues)
            if scalarValuesAsString == "128522" {
                happyMoodValue += 1
            }
            if scalarValuesAsString == "128515" {
                           happyMoodValue += 1
                       }
            
            if scalarValuesAsString == "9785" {
                           sadMoodValue -= 1
                       }
            if scalarValuesAsString == "128577" {
                           sadMoodValue -= 1
                       }
            
            if scalarValuesAsString == "128533" {
                                      sadMoodValue -= 1
                                  }
            if scalarValuesAsString == "128532" {
                                      sadMoodValue -= 1
                                  }
//        if inputMessageAsString.contains("☹") {
//            moodValue -= 1
//        }
//
//        if inputMessageAsString.contains("🙁") {
//            moodValue -= 1
//        }
//
//        if inputMessageAsString.contains("😕") {
//            moodValue -= 1
//        }
//        if inputMessageAsString.contains("😔") {
//            moodValue -= 1
//        }
//
//        if inputMessageAsString.contains("😃") {
//            moodValue += 1
//        }
//
//        if inputMessageAsString.contains("😊") {
//            moodValue += 1
//        }
//        }
        
        if happyMoodValue > 0 {
            outputText.text = "Happy"
        } else if sadMoodValue < 0 {
            outputText.text = "Sad"
        } else if sadMoodValue == happyMoodValue{
            outputText.text = "Unsure"
        } else {
            outputText.text = "None"
        }
        //        😃 ,😊 ,
        //      ☹ ,🙁 ,😕 ,😔
        
        
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}


