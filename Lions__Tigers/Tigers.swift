//
//  Tigers.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 9/28/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import Foundation
// import UIKit for UIImage capabilities
import UIKit


/* Struct is like a class but struts are always copied and do not participate in reference counting.
//Structs cannot be inherited or type-cast */
/// Tiger struct will be called when an instance of Tiger is to be created.
struct Tiger {
    
    // Properties that can be set when an instance of Tiger has been created.
    var name = ""
    var breed = ""
    var age = 0
    var image = UIImage(named: "")
    
    // Function in Strict that is called when tiger makes a noise.
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    // Function in Strict that takes a parameter and will run the chuff() function as many times as the parameter shows
    func chuffANumberOfTimes (numberOfTimes: Int) {
        
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            
            self.chuff()
        }
    }
    
    // fuction with 2 parameters and uses Control Flow
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        
        // determine how many times to loop code
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            
            // Control Flow
            // if isLoud (true) run chuff() function (prints "Chuff Chuff" to console
            if isLoud {
                chuff()
            }
            // else (isLoud = false) print the following to console
            else {
                
                println("Tiger: purr purr")
            }
        }
    }
    
    // function take 1 parameter and returns an Int
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        
        let newAge = regularAge * 3
        return newAge
        
    }
    
    // function returns a string when called
    func randomFact() ->String {
        
        // create a random number
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        // create variable instance
        var randomFact:String
        
        // determine the string value based on the random number
        if randomNumber == 0 {
            
            randomFact = "The Tiger is the biggest species in the cat family"
            
        }
        else if randomNumber == 1 {
            
            randomFact = "Tigers can reach a length of 3.3 meters"
        }
        else {
            randomFact = "A group of tigers is know as an 'ambush' or 'streak'"
        }
        
        // return the random string
        return randomFact
    }
    
}

