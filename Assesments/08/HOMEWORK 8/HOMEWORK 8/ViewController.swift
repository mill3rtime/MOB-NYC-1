//
//  ViewController.swift
//  HOMEWORK 8
//
//  Created by Matt Miller on 3/3/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit
import Foundation


// PLAYGROUNDS KEPT CRASHING SO I MOVED EVERYTHING HERE



class ViewController: UIViewController {

    var errorString2 = "NO VALUE"
    var errorCode2 = 000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    
    
    // Assignment 8 playground
    
    
    //TODO one: Write and call a function that make a successful network connection to google.com using core networking APIs, then print out the results.
    
    
    // closure execute after in
        // call back
        
        
    if let url = NSURL(string: "http://google.com") {
        let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
            var dataString = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            
            // println(data)    //data not readable unless encoded
            
            
            
            //TODO 1
            // UNCOMMENT BELOW TO PRINT
            
            //println("TODO one response is \(response)")
            //println("TODO one error is \(error)")
            //println("TODO one data is \(dataString)")
           
            
        })
        
        
        task.resume()
    }
    
    
    //TODO two: Write and call a function that makes a failing network connection (using core networking APIs) to http://generalassemb.ly/foobar.baz, a nonexistant page. Print out the status code and body of the response.
    
    
    if let url = NSURL(string: "http://generalassemb.ly/foobar.baz") {
        let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
            var dataString2 = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            if let someError = error {
                 self.errorString2 = someError.localizedDescription
               
            }
            
            
    
  //(?!) better way to name error code  3 names???
            
            var responseString = response.description
            
            var httpResponse = response as? NSHTTPURLResponse
            
            if let errorCode = httpResponse?.statusCode {
                
                self.errorCode2 = errorCode
                
            }
            
            
            var errorBody = response.description
            
            
            
            //TODO 2
            // UNCOMMENT BELOW TO PRINT
            
            
            println(self.errorCode2)
            println(errorBody)
            

            
        })
        
        
        
        task.resume()
        }
    


    //TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.
    
    
    if let weatherURL = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US") {
        let weatherSession = NSURLSession.sharedSession().dataTaskWithURL(weatherURL, completionHandler: { (data, response, error) -> Void in
            var weatherDataString2 = NSString(data: data, encoding: NSUTF8StringEncoding)
            
        })
        
        
        
        weatherSession.resume()
    }
    
    
        
        class weather {
            
            var temp = 0
            var howIsIt = ""
            


        }
    
    
    
    
    //TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.
    
    
    
    
    
    
    }

}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    





