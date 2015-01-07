//
//  ViewController.swift
//  BoatHw2
//
//  Created by Matt Miller on 1/6/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusString: UILabel!

var USSBoat = Boat()
    
    
    
    @IBAction func goSlower(sender: AnyObject) {
        
         USSBoat.goSlow()
        statusString.text = USSBoat.statusString
        
    }
    
  
    
    




}

