//
//  ViewController.swift
//  Seinfeld
//
//  Created by Matt Miller on 1/27/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellIdentifier = "cellIdentifier"
    
    var tableData = [String]()
    
    @IBOutlet var tableView: UITableView?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

