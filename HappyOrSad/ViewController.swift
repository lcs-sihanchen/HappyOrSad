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
        var moodValue = 0
        for scalars in inputMessageAsString.unicodeScalars {
            let scalarValues = scalars.value
            var scalarValuesAsString = String(scalarValues)
            if scalarValuesAsString == "128522" {
                moodValue += 1
            }
            if scalarValuesAsString == "128515" {
                           moodValue += 1
                       }
            
            if scalarValuesAsString == "9785" {
                           moodValue -= 1
                       }
            if scalarValuesAsString == "128577" {
                           moodValue -= 1
                       }
            
            if scalarValuesAsString == "128533" {
                                      moodValue -= 1
                                  }
            if scalarValuesAsString == "128532" {
                                      moodValue -= 1
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
        
        if moodValue > 0 {
            outputText.text = "Happy"
        } else if moodValue < 0 {
            outputText.text = "Sad"
        } else {
            outputText.text = "None"
        }
        //        😃 ,😊 ,
        //      ☹ ,🙁 ,😕 ,😔
        
        
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
}


