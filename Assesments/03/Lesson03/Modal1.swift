//
//  Modal1.swift
//  Lesson03
//
//  Created by Matt Miller on 1/17/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class Modal1: UIViewController {
    
    
    @IBAction func dismissModal1(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

