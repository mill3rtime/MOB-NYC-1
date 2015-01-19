//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaultSwipeText = "Swipe Right for Modal"
    
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    TODO five: Create a subclass of the Animal class, add an instance of that object to be displayed in the table view, then change the displayed string of the subclass to your liking. Your subclass should override the function 'prettyAnimalName' (i.e. you should only need to modify the below array, not the table view code)
    */
    
    @IBOutlet weak var swipeArea: UILabel!
    
    @IBAction func swipeRight(sender: AnyObject) {
        performSegueWithIdentifier("Modal1Seg",sender: nil)
        
        swipeArea.text = defaultSwipeText
        
    }
    
    @IBAction func swipeLeft(sender: AnyObject) {
        swipeArea.text = "You Must Swipe Right!"
        
    }
    
    @IBAction func displayTableView(sender: AnyObject) {
        performSegueWithIdentifier("TableSegue", sender:nil)
        
    }
    
}









