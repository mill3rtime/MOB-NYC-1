//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    
    //Variables
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var myArray = [String]()
    
// Next would be lifcycle functions?
    
    
    
    //Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
        
        self.tableView.dataSource = self
       // self.tableView.delegate = self
        self.textField.delegate = self
        
        
    }   // end view did load
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
        
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    
    
    // cellForRowAtIndexPath indexPath why both
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        
        // DONT FORGET TO SET ID AND A PROTO CELL IN SB!!!
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // get correponding entry from the array
        let row = indexPath.row                     //index of a row in a given section, row of the section in your datasource
        
    
        let entry = myArray[row]
        
        
        //Configure the cell
        
        cell.textLabel?.text = entry
        
        
        return cell
        
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        var userInput = textField.text
        myArray.append(userInput)
        self.tableView.reloadData()
        textField.text = ""
        textField.resignFirstResponder()
        return true
    }
    
    
    

    

}

        

        
        


