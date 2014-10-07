//
//  ViewController.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 9/28/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // UI objects in storyboard
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    // Create an array with type Tiger and setting as an empty array
    var myTigers:[Tiger] = []
    var lions:[Lion] = []
    var lionCubs:[LionCub] = []
    
    var currentIndex = 0
    
    //Tuple to use when determining which type of animal to display.
    var currentAnimal = (species: "Tiger", index : 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create instance of the Tiger struct
        var firstTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal Tiger"
        firstTiger.age = 3
        firstTiger.image = UIImage(named: "BengalTiger.jpg")
        firstTiger.age = firstTiger.ageInTigerYearsFromAge(firstTiger.age)
        firstTiger.chuff()
        firstTiger.chuffANumberOfTimes(5, isLoud: false)

        // Add firstTiger into the myTigers array using .append
        myTigers.append(firstTiger)
        
        // Create instance of secondTiger, thirdTiger & fourthTiger and set Tiger's properties
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        secondTiger.age = firstTiger.ageInTigerYearsFromAge(secondTiger.age)
        secondTiger.chuff()
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        thirdTiger.age = firstTiger.ageInTigerYearsFromAge(thirdTiger.age)

        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 3
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        fourthTiger.age = firstTiger.ageInTigerYearsFromAge(fourthTiger.age)

        // Add secondTiger, thirdTiger & fourthTiger to myTigers array using Logic Operator short-hand
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        firstTiger.chuffANumberOfTimes(3)
        secondTiger.chuffANumberOfTimes(2)
        
        // Set View Labels using firstTiger's Tiger properties
        self.nameLabel.text = firstTiger.name
        self.breedLabel.text = firstTiger.breed
        self.ageLabel.text = "\(firstTiger.age)"
        self.imageView.image = firstTiger.image
        self.randomFactLabel.text = firstTiger.randomFact()
        
        // Create a variable instance of the Lion Class
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        // Calling Lion Class Function
        lion.roar()
        lion.changeToAlphaMale()
        
        if lion.isAlphaMale == true {
            println("The Lion is now an Alpha!")
        }
        
        // Create a variable instance of the Lion Class
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subspecies = "Barbary"
        
        // Calling Lion Class Function
        lioness.roar()
        
        // Load the 2 instances of the Lion Class into the lions array
        self.lions += [lion, lioness]
        
        // LionCub is a sub-Class of Lion and is able to call the properties and functions of the LionCub's super-Class... Lion
        var lionCub = LionCub()
        
        lionCub.age = 1
        lionCub.name = "Simba"
        lionCub.image = UIImage(named: "LionCub1.jpg")
        lionCub.subspecies = "Masau"
        lionCub.isMale = true
        
        println("Lion Cub should roar after this statement")
        lionCub.roar()
        lionCub.rubLionCubsBelly()
        
        var femaleLionClub = LionCub()
        
        femaleLionClub.age = 1
        femaleLionClub.name = "Nala"
        femaleLionClub.image = UIImage(named: "LionCub2.jpeg")
        femaleLionClub.subspecies = "Transvaal"
        femaleLionClub.isMale = false
        
        self.lionCubs += [lionCub, femaleLionClub]
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - ACTION METHOD
    
    // Updates the UI objects with random instances of the Tiger
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        //updateTiger()
        updateAnimal()
        updateView()
        
        
        
        //THE CODE BELOW WAS MOVED TO THE NEW UPDATE TIGER HELPER FUNCTION
        
  /*      /// Create a variable that will be used to create a random number
        var randomIndex:Int
        
        // Execute the random number code once, if the while condition stays true, re-execute the random number code, if the while is false, break from the DO/WHILE loop.
        do {
        
        // Create a random number from 0 to the count of the myTigers array
        randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
          // if the current tiger is the same as the random number, run the random number code againg until it is a different tiger
        } while currentIndex == randomIndex
    
        
        currentIndex = randomIndex
        
        
        // THE FOLLOWING COMMENTED CODE WAS MOVED INTO THE DO/WHILE CODE ABOVE
        
//        // Create a random number from 0 to the count of the myTigers array
//        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        // Create instance of Tiger Struct and set it to the tiger that is at the randomIndex in the array
        let currentTiger = myTigers[randomIndex]
        
        // THE FOLLOWING COMMENTED CODE WAS MOVED INTO THE UIView.transitionWithView CLOSURE
        // Set UI objects to the current tiger's properties
        //nameLabel.text = currentTiger.name
        //ageLabel.text = "\(currentTiger.age)"
       // breedLabel.text = currentTiger.breed
       // imageView.image = currentTiger.image
        
        // Set the view to make an animated transition while the UI objects are being set to the next currentTiger
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            //Set UI objects to the current tiger's properties
            self.nameLabel.text = currentTiger.name
            self.ageLabel.text = "\(currentTiger.age)"
            self.breedLabel.text = currentTiger.breed
            self.imageView.image = currentTiger.image
            self.randomFactLabel.text = currentTiger.randomFact()
            
            }, completion: { (finished: Bool) -> () in
        }) */
    }
    
    
    //MARK: - HELPER FUNCTIONS
    
// UPDATE ANIMAL - HELPER METHOD - Looks at the currentAnimal and makes sure that the next animal is not the same type.
    
    // Function that will be called to assure that we are every selection is of a different type then the previous
    func updateAnimal() {
        
        // currentAnimal is a Tuple created as a property
        switch currentAnimal {
            
            // This is comparing the value in the case statement to the currentAnimal Tuple
        case ("Tiger", _) :
            let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
            currentAnimal = ("Lion", randomIndex)
            
        case ("Lion", _) :
            let randomIndex = Int(arc4random_uniform(UInt32(lionCubs.count)))
            currentAnimal = ("LionCub", randomIndex)
            
        default:
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
        }
    }

// UPDATE TIGER - HELPER FUNCTION - Was used to randomly select a Tiger while making sure that the same Tiger was not used twice in a row 
// ***Nolonger using this Function... see UPDATE ANIMAL Function
    
 /*   func updateTiger() {
        
        /// Create a variable that will be used to create a random number
        var randomIndex:Int
        
        // Execute the random number code once, if the while condition stays true, re-execute the random number code, if the while is false, break from the DO/WHILE loop.
        do {
            
            // Create a random number from 0 to the count of the myTigers array
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            
            // if the current tiger is the same as the random number, run the random number code againg until it is a different tiger
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        // Create instance of Tiger Struct and set it to the tiger that is at the randomIndex in the array
        let currentTiger = myTigers[randomIndex]
 
        // Set the view to make an animated transition while the UI objects are being set to the next currentTiger
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            //Set UI objects to the current tiger's properties
            self.nameLabel.text = currentTiger.name
            self.ageLabel.text = "\(currentTiger.age)"
            self.breedLabel.text = currentTiger.breed
            self.imageView.image = currentTiger.image
            self.randomFactLabel.text = currentTiger.randomFact()
            
            }, completion: { (finished: Bool) -> () in
        })
    } */
    
    
    
// UPDATE VIEW - HELPER FUNCTION - Determines what the currentAnimal is and updates the view based on the type of animal
    func updateView() {
        
        // Set the view to make an animated transition while the UI objects are being set to the next currentTiger
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            // IS THIS A TIGER? If it is...
            if self.currentAnimal.species == "Tiger" {
                
                //... create a tiger instance and set to the myTiger array's index that is associated with the currentAnimal
                let tiger = self.myTigers[self.currentAnimal.index]
                
                self.imageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name
                self.randomFactLabel.text = tiger.randomFact()
            }
            
            // IS THIS A Lion? If it is...
            else if self.currentAnimal.species == "Lion" {
                
                //... create a lion instance and set to the lions array's index that is associated with the currentAnimal
                let lion = self.lions[self.currentAnimal.index]
                
                self.imageView.image = lion.image
                self.breedLabel.text = lion.subspecies
                self.ageLabel.text = "\(lion.age)"
                self.nameLabel.text = lion.name
                self.randomFactLabel.text = lion.randomFact()
            }
            
                // IS THIS A LionCub? If it is...
            else if self.currentAnimal.species == "LionCub" {
                
                //... create a lion instance and set to the lions array's index that is associated with the currentAnimal
                let lionCub = self.lionCubs[self.currentAnimal.index]
                
                self.imageView.image = lionCub.image
                self.breedLabel.text = lionCub.subspecies
                self.ageLabel.text = "\(lionCub.age)"
                self.nameLabel.text = lionCub.name
                self.randomFactLabel.text = lionCub.randomFact()
            }
            
            }, completion: { (finished: Bool) -> () in
        })
    }
    
    
    
    
}

