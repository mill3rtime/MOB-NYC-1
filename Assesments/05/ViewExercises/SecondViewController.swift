//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    
       
        var navYPos =  self.navigationController!.navigationBar.frame.maxY
        var screenWidth = CGRectGetMaxX(self.exerciseView.frame)
        var screenHeight = CGRectGetMaxY(self.exerciseView.frame)
        let myColor = UIColor.blueColor()
      
        //(?) set a var for color??
        //  var color: UIColor = UIColor.blueColor().CGColor
        
        let size: CGFloat = 20
        
        var tl = CGRect(x: 0, y: navYPos, width: size, height: size)
        var tr = CGRect(x: screenWidth - size, y: navYPos, width: size, height: size)
        var bl = CGRect(x: 0, y: screenHeight - (44 + size), width: size, height: size)
        var br = CGRect(x: screenWidth - size, y: screenHeight - (44 + size), width: size, height: size)
        
        
        
        
        var tlView = UIView(frame: tl)
        
        tlView.autoresizingMask = (UIViewAutoresizing.FlexibleBottomMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin)
        
        var trView = UIView(frame: tr)
       
        trView.autoresizingMask = (UIViewAutoresizing.FlexibleBottomMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleLeftMargin)
        
        var blView = UIView(frame: bl)
        
        blView.autoresizingMask = (UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin)
        
        var brView = UIView(frame: br)
        
       brView.autoresizingMask = (UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleLeftMargin)
        
        
        tlView.backgroundColor = myColor
        trView.backgroundColor = myColor
        blView.backgroundColor = myColor
        brView.backgroundColor = myColor
        
        self.exerciseView.addSubview(tlView)
        self.exerciseView.addSubview(trView)
        self.exerciseView.addSubview(blView)
        self.exerciseView.addSubview(brView)
        
        

        
        
    }

    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
