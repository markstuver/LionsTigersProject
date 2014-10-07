//
//  LionCub.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 10/6/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation

// LionCub is the sub-Class of Lion; Lion is the super-Class of the LionCub
class LionCub: Lion {
    
    var isMale = false
    
  
    func rubLionCubsBelly() {
        println("LionCub: Snuggle and be happy")
 
    }
    
    // Overides the roar function that is available in the super-Class
    override func roar() {
        // super allows for the code in the super-Class' function.. to be excuted as well as the additional code in this override function
        super.roar()
        println("LionCub: Growl, Growl")
    }
    
    
    override func randomFact() -> String {
        
        var randomFactString:String
        
        if isMale {
            randomFactString = "Cubs are usualy hidden in dense bus for approximately six weeks"
        }
        else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
   
        return randomFactString
    }

}
