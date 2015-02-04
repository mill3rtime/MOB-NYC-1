//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    var myArray = [String]()
    
    @IBAction func buttonPress(sender: AnyObject) {
        
        if let var userInput = textField.text {
            myArray.append(userInput)
            println(myArray[0])
        }
        
        }
        
    
    // table view contains as many rows as elements as items in the array
     func tableView(tableView: UITableView, numberofRowsInSection section: Int) -> Int {
        
        return self.myArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
        // get correponding entry from the array
        let entry = self.myArray[indexPath.row]
        
        
        //Configure the cell
        
        cell.textLabel!.text = entry
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
        
        
    }
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
       
        
       /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
        
      
        }
    

    
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//      
//        
//        if let var userInput = textField.text {
//            println("sdfsdf")
//            myArray.append(userInput)
//            println(myArray[0])
//        }
//        
    
        
    
        

        
        
    }

