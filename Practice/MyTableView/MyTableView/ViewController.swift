//
//  ViewController.swift
//  MyTableView
//
//  Created by Matt Miller on 1/25/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var candies = [Candy]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.candies = [Candy(name: "Jolly Rancher"), Candy(name: "Snickers"), Candy(name: "twix"), Candy(name: "ButterFinger"),Candy(name: "Milky Way")]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.candies.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var candy : Candy
        
        candy = candies [indexPath.row]
        
        cell.textLabel.text = candy.name
        
        return cell

    }
}


