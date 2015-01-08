//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    

    
    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var sumDisplay: UILabel!
    
    var numericalSum:Int = 0
    
    @IBAction func addNumbers(sender: AnyObject) {
        
      //  if inputNumber.text.isEmpty {
        //    return
        //}
        
        
        
        
        if let var addNumber: Int = inputNumber.text.toInt(){
        
        numericalSum += addNumber
        
        sumDisplay.text = "\(numericalSum)"    // should actually call func here not implement
        }
        
    } // close addNumbers
    
}
