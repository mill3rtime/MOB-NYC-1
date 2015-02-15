
//  CalcButton.swift
//  CalculatorM
//
//  Created by Matt Miller on 2/12/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//


//?* want a variable with 3 possibilities: number, operator, clear
//? CHINESE START AND END



import Foundation
import UIKit

//@objc protocol ButtonDelegate{
//    optional func numButtonPressed()
//    optional func operatorButtonPressed()
//}

// CHINESE STARTS HERE
class CalcButton: UIButton {
    
    
    enum Kind {
        case CalcNumber
        case CalcOperator
    }
    
    var label: UILabel = UILabel()
    var origColor = UIColor.purpleColor()
    var tapColor:UIColor?
    var buttonColor = UIColor.purpleColor()
    var valueArray = [String]()
    var prevTapIsOp = false
    var total:Float = 0
    
    var kind: Kind = Kind.CalcNumber
    
        func getValue() ->String {
    
            if let getLabel = self.label.text {
            return getLabel
    
            }
    
            return ""
        }
    
 
    
        func getKind() ->Kind {
        return self.kind
        }
    
    
    func numButtonPressed() {
        
        prevTapIsOp = false
        println("numButtonPressed fired")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    // CHINESE ENDS HERE
    
    func commonInit() {
        self.addSubview(label)
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addConstraint(NSLayoutConstraint(item: label,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: label,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterY,
            multiplier: 1,
            constant: 0))
        label.textAlignment = .Center
        label.textColor = UIColor.whiteColor()
       

    }
    
    

//    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
//        
//    
//
//}
//



    //        var tapGesture = UITapGestureRecognizer(target: ViewController.self, action: "buttonTap")
    //
    //
    //                var tapGesture = UITapGestureRecognizer(target: ViewController(), action: "gotTapped")
    //
    //        self.addGestureRecognizer(tapGesture)
    
    
}




//        NSNotificationCenter.defaultCenter().addObserver(ViewController.self(, selector: "buttonTapped", name: nil)

//        var tapGesture = UITapGestureRecognizer(target: ViewController(), action: "buttonTap")
//        self.addGestureRecognizer(tapGesture)



//TAP IT

