//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {
    
    
    //(?)for view in....
    
//    for view in [tl, tr, br, bl] {
//    var view = UIView()
//    
//    }
//
//    

    var size: CGFloat = 20
    let myColor = UIColor.blueColor()
    
    var tl = UIView()
    var tr = UIView()
    var bl = UIView()
    var br = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        
        
        
        autolayout()
    }
    
    func autolayout() {
        
        //tl layout

        
        tl.backgroundColor = myColor
        
        tl.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        exerciseView.addSubview(tl)
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tl,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tl,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: navYPos
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tl,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tl,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        
        
        // tr layout
        
        tr.backgroundColor = myColor
        
        tr.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        exerciseView.addSubview(tr)
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tr,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 0
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tr,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: navYPos
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tr,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: tr,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        
        // bl layout
        
        bl.backgroundColor = myColor
        
        bl.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        exerciseView.addSubview(bl)
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: bl,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: bl,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: -44
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: bl,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: bl,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        
        
        
        
        // br layout
        
        br.backgroundColor = myColor
        
        br.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        exerciseView.addSubview(br)
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: br,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 0
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: br,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: -44
            ))
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: br,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        exerciseView.addConstraint(NSLayoutConstraint(
            item: br,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: size)
        )
        
        
        
    
        
        
//        
//
//        1. create the views before you postion them
//        for *view* in [asdfasdfasdf,asdfadsf] {    // loops over all of the view you want ends at end of the list
//            
//            set bk color
//            set size: add constaint
//            -->exerview.AddConstraint(NSlayout constaraint.
//            item is *view*  constant is 20, to is nil., attribute is .NotanAttibute
//
//        
//        
        
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        


        
    }
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}


/*



1. create the views before you postion them
 for *view* in [asdfasdfasdf,asdfadsf] {    // loops over all of the view you want ends at end of the list

set bk color
set size: add constaint
-->exerview.AddConstraint(NSlayout constaraint.
item is *view*  constant is 20, to is nil., attribute is .NotanAttibute


set translate auto resing mask to false  // dont mix and match autolayout and sns

left of something to .Left

to item can also be the toolbar......

make toolbar a class variable of the superview


nav bar belongs to nav controller
but nav bar is in a differnt vir hierarrchy



self.exercix

}





***toplsyourguide (sean)




leading and trailing means left and rightr


*/