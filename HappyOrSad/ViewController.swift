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
            outputText.text = "Please enter a number."
            return
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

