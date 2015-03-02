//
//  ViewController.swift
//  GooglePrinter
//
//  Created by Rudd Taylor on 2/25/15.
//  Copyright (c) 2015 ga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var errorString = ""

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        if let url = NSURL(string: "http://googlerrr.com") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                var string = NSString(data: data, encoding: NSUTF8StringEncoding)
                dispatch_async(dispatch_get_main_queue(), {
                    self.textView.text = string
                    if let someError = error {
                        self.errorString = someError.localizedDescription
                    self.textView.text = someError.localizedDescription
                        
                        
                        var alert = UIAlertController(title: "Alert", message: self.errorString, preferredStyle: UIAlertControllerStyle.Alert)
                        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
                        self.presentViewController(alert, animated: true, completion: nil)
                        
                    }
                })
            })
             println(task)
            
            task.resume()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

