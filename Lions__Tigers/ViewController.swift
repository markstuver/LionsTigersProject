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
    
    // Create an array with type Tiger and setting as an empty array
    var myTigers:[Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create instance of the Tiger struct
        var firstTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal Tiger"
        firstTiger.age = 3
        firstTiger.image = UIImage(named: "BengalTiger.jpg")

        // Add firstTiger into the myTigers array using .append
        myTigers.append(firstTiger)
        
        // Create instance of secondTiger, thirdTiger & fourthTiger and set Tiger's properties
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")

        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")

        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 3
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")

        // Add secondTiger, thirdTiger & fourthTiger to myTigers array using Logic Operator short-hand
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        // Set View Labels using firstTiger's Tiger properties
        nameLabel.text = firstTiger.name
        breedLabel.text = firstTiger.breed
        ageLabel.text = "\(firstTiger.age)"
        imageView.image = firstTiger.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Action Methods
    
    // Updates the UI objects with random instances of the Tiger
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        // Create a random number from 0 to the count of the myTigers array
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        // Create instance of Tiger and set it to the tiger that is at the randomIndex in the array
        let currentTiger = myTigers[randomIndex]
        
        // THE FOLLOWING COMMENTED CODE WAS MOVED INTO THE UIView.transitionWithView CLOSURE
        // Set UI objects to the current tiger's properties
        //nameLabel.text = currentTiger.name
        //ageLabel.text = "\(currentTiger.age)"
       // breedLabel.text = currentTiger.breed
       // imageView.image = currentTiger.image
        
        // Set the view to make an animated transition while the UI objects are being set to the next currentTiger
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            //Set UI objects to the current tiger's properties
            self.nameLabel.text = currentTiger.name
            self.ageLabel.text = "\(currentTiger.age)"
            self.breedLabel.text = currentTiger.breed
            self.imageView.image = currentTiger.image
            
            }, completion: { (finished: Bool) -> () in
        })
    }
    
    
    
    
}

