//
//  FourthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FourthViewController: ExerciseViewController {
    
    
    var margin: CGFloat = 10
    
    var blueBox = UIView()
    var purpleLabel = UILabel()
    
    var scrollView = UIScrollView()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        
        /* TODO:
        Build a scroll view that takes up the entire screen.
        
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.
        
        
        Your view should be in self.exerciseView, not self.view.
        
        */
        
        
        autolayout()
    }
    
    

    
    func autolayout() {
        
    
        
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        purpleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        exerciseView.addSubview(scrollView)
        scrollView.addSubview(purpleLabel)
        scrollView.addSubview(blueBox)
        
        
        purpleLabel.backgroundColor = UIColor.purpleColor()
        purpleLabel.text = "white text in the middle!"
        purpleLabel.textColor = UIColor.whiteColor()
        purpleLabel.textAlignment = NSTextAlignment.Center
        
        
        blueBox.backgroundColor = UIColor.blueColor()
        
        scrollView.backgroundColor = UIColor.blackColor()
        
        scrollView.scrollEnabled = true
        
        

        
        

        let topSvConstraint = NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: exerciseView, attribute: .Top, multiplier: 1, constant: navYPos)
        
        let leftSvConstraint = NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: exerciseView, attribute: .Left, multiplier: 1, constant: 0)
        
        let rightSvConstraint = NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: exerciseView, attribute: .Right, multiplier: 1, constant: 0)
        
        let bottomSvConstraint = NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: exerciseView, attribute: .Bottom, multiplier: 1, constant: 0)
        
 
        
        exerciseView.addConstraints([topSvConstraint,bottomSvConstraint,rightSvConstraint,leftSvConstraint])
        
        
        //purplelabel layout
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1,
            constant: 0
            ))
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1,
            constant: 1000
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0
            ))
        
        
        
        
        
        
        //blueBox layout
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: margin
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: navYPos + margin
            ))
        
        
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0
            ))
        
        
        
                    exerciseView.addConstraint(NSLayoutConstraint(
                        item: blueBox,
                        attribute: NSLayoutAttribute.CenterY,
                        relatedBy: .Equal,
                        toItem: exerciseView,
                        attribute: .CenterY,
                        multiplier: 1.0,
                        constant: 0
                        ))
        
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Width,
            multiplier: 1.0,
            constant: -(margin*2)
            ))
        
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20)
        )
        
        
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }
    
}
