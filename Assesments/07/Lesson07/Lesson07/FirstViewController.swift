//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

// TODO: TODO one: Make this text view print the values of test_string and test_number, stored in NSUserDefaults


import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textView1: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var testString = NSUserDefaults.standardUserDefaults().stringForKey("test_string")
        var testNumber = NSUserDefaults.standardUserDefaults().integerForKey("test_number")
        
        
        if let testStringWithValue = testString {
            
      
        
        textView1.text = testStringWithValue + "  \(testNumber)"
                
        
        }
    }
}
