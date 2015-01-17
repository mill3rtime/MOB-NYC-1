//
//  ViewController.swift
//  Game1
//
//  Created by Matt Miller on 1/14/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label: UITextView!
    
    @IBAction func startMatch(sender: AnyObject) {
    
        
        var goodPlayer = GoodPlayer()
        var badPlayer = BadPlayer()
        
        var thisMatch = Match(player1: goodPlayer, player2: badPlayer)
        
        
        
        
        if thisMatch.playGame() == "p1 wins!"
        
        
        {
            
            performSegueWithIdentifier("GoodModalSeg", sender: nil)
            
        }
        
        if thisMatch.playGame() == "p2 wins!"
        {
        
            performSegueWithIdentifier("BadModalSeg",
                sender: nil)
        }
    
            
        
    label.text = thisMatch.playGame()
    
    
    }

    
    
    
}

