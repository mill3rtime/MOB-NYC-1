//
//  FirstViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//


// MM TODO: Border

import UIKit

class FirstViewController: ExerciseViewController {
    
    
//
//
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
       
        
        /* TODO:
        Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
        and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        
        var screenWidth = CGRectGetMaxX(self.exerciseView.frame)
        var screenMidX = CGRectGetMidX(self.exerciseView.frame)
    
        
        
        // (?) why do we need the ! here after navigationController?
        // (?) nav heigh is still above bar. I can add 15 and nothing happens
        
        var navHeight =  self.navigationController!.navigationBar.frame.height
        
        //(?) why doesn't this work?
       // var toolHeight = ExerciseViewController.toolbar.view.frame.height
        
        var toolHeight: CGFloat = (self.view.frame.height - 44)
    
        
        
        
        // (?) heights of nav and toolbar that I grab are 20 off? why?
        var rect1 = CGRect(x: 0, y: navHeight + 20, width: screenWidth, height: 100)
        var rect2 = CGRect(x: 0, y: toolHeight - 100, width: screenWidth, height: 100)
        var topBorderRect = CGRect(x: 0, y: navHeight + 20, width: screenWidth, height: 5)
        var bottomBorderRect = CGRect(x: 0, y: toolHeight - 5, width: screenWidth, height: 5)
    
        
        
        var redBox = UIView(frame: rect1)
        var blackBox = UIView(frame: rect2)
        var topBorder = UIView(frame: topBorderRect)
        var bottomBorder = UIView(frame: bottomBorderRect)
        
        
        
        redBox.backgroundColor = UIColor.redColor()
        blackBox.backgroundColor = UIColor.blackColor()
        topBorder.backgroundColor = UIColor.blackColor()
        bottomBorder.backgroundColor = UIColor.redColor()
        
        
        
        // (?) WHY not self.view...?
        // (?) if I type one of these lines out verbatim it does not work
        self.exerciseView.addSubview(redBox)
        self.exerciseView.addSubview(blackBox)
        self.exerciseView.addSubview(topBorder)
        self.exerciseView.addSubview(bottomBorder)

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
