//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Chen, Sihan on 2019-11-18.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // properties
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
        
        
        if inputMessageAsString.count > 255 {
            outputText.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
        }
        // Setting mood values
        var sadMoodValue = 0
        var happyMoodValue = 0
        // Check the characters one by one
        for scalars in inputMessageAsString.unicodeScalars {
            let scalarValues = scalars.value
            var scalarValuesAsString = String(scalarValues)
            
            // If it's sad, +1 to sad values, if it's happy, + 1 to happy values
            if scalarValuesAsString == "128522" {
                happyMoodValue += 1
            }
            if scalarValuesAsString == "128515" {
                happyMoodValue += 1
            }
            
            if scalarValuesAsString == "128516" {
                happyMoodValue += 1
            }
            
            if scalarValuesAsString == "128578" {
                happyMoodValue += 1
            }
            if scalarValuesAsString == "9785" {
                sadMoodValue += 1
            }
            if scalarValuesAsString == "128577" {
                sadMoodValue += 1
            }
            
            if scalarValuesAsString == "128533" {
                sadMoodValue += 1
            }
            if scalarValuesAsString == "128532" {
                sadMoodValue += 1
            }
            
            
        }
        // Compare values to get the correct output
        if happyMoodValue > sadMoodValue {
            outputText.text = "Happy"
        } else if sadMoodValue > happyMoodValue {
            outputText.text = "Sad"
        } else if sadMoodValue == 0 && happyMoodValue == 0{
            outputText.text = "None"
        } else if sadMoodValue == happyMoodValue{
            outputText.text = "Unsure"
        }
        //        😃 ,😊 ,
        //      ☹ ,🙁 ,😕 ,😔
        sadMoodValue = 0
        happyMoodValue = 0
    }
    
    
    
    
    
    
    
    
    
    
    
    
}


