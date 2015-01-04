//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet weak var messageText: UILabel!
    
    @IBOutlet weak var inputEvenNumber: UITextField!
    
    
    @IBAction func checkIfEven(sender: AnyObject) {
        
        var numberValue: Int? = inputEvenNumber.text.toInt()
        
       if inputEvenNumber.text.isEmpty {
           return
         }
        
      else if numberValue!%2 == 0 {
            
            messageText.text = "is even"
            
        }
        
        else if numberValue!%2 != 0 {
            
            messageText.text = "is not even"
            
        }
        

    }
    
        
    }
    

