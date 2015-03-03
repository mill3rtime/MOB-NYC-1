//
//  ViewController.swift
//  Weather
//
//  Created by Matt Miller on 3/2/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherLabel: UILabel!
    var jsonResponse: NSDictionary?
    var temp: String?
    
    
    //let url = "http://api.openweathermap.org/data/2.5/weather?q=nyc,ny"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // if url exists
        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=nyc,ny") {
            //if it exists do all of these tasks
            
            // make a url session
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                var jsonError: NSError?
                if let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: &jsonError) as? NSDictionary {
                    
                    self.jsonResponse = jsonDict
                    
                    // Required! We must update the UI only on the main queue, but this completion handler gets run in the background queue!
                    
                    
                 
                    
                    self.getWeather()
                    
                    dispatch_async(dispatch_get_main_queue(), {
                        // self.tableView.reloadData()
                        
                    })
                }
            })
            // Required to start the network task
            task.resume()
        }
     
        
    }
    
    func getWeather() ->String {
        
        var returnTemp = "no data"
        
        if let jsonResponse = self.jsonResponse {
            
            if let main = jsonResponse["main"] as? NSDictionary {
                
                if let returnTemp = main["temp"] as? String {
                    
                    
                }
                
                }
            
        }
        
        println(returnTemp)
        return returnTemp
        
}


}



