//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.

// TODO two: Make this text view print the values of the string and slider value stored in the settings bundle of the app.

import UIKit

class SecondViewController: UIViewController {
    
    var settingsSliderString = "settings_slider"
    var settingsNameString = "settings_name"
    
    @IBOutlet weak var textField2: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
         let name = NSUserDefaults.standardUserDefaults().stringForKey(settingsNameString) ?? ""
            if let  position: Float = NSUserDefaults.standardUserDefaults().objectForKey(settingsSliderString) as? Float {
        
      textField2.text = name  + " \(position)"
 
            }
        
    
        
    }
}