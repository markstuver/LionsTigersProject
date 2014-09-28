//
//  ViewController.swift
//  Lions__Tigers
//
//  Created by Mark Stuver on 9/28/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Create instance of Tiger struct
        var firstTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal Tiger"
        firstTiger.age = 3
        firstTiger.image = UIImage(named: "BengalTiger.jpg")

        
        // Create instance of Tiger struct
        var secondTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")

        
        // Create instance of Tiger struct
        var thirdTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")

        
        // Create instance of Tiger struct
        var fourthTiger = Tiger()
        
        // Set properties of firstTiger using Tiger properties
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 3
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")

        
        
        
        
        
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
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
    }
}

