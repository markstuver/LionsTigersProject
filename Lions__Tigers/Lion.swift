//
//  Lion.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 10/5/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    // class function that can be called from a Lion instance
    func roar() {
        
        println("Lion: Roar! Roar!")
    }
    
    
    func changeToAlphaMale() {
        
        self.isAlphaMale = true
    }
    
    // Function that returns a String value
    func randomFact() ->String {
        
        var randomFact:String
        
        if self.isAlphaMale  {
             randomFact = "Male lions are easy to recongize thanks to their distictive manes. Males with darker manes are more likely to attract females"
        }
        else {
            randomFact = "Female Lionesses form the stable social unit and do not tolerate outside females"
        }
        
        return randomFact
    }
    
    
    
}

