//
//  ViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 17/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit

class TwelveSingsViewController: UIViewController {
    
    //MARK: OUTLETS
    
    @IBOutlet weak var ratOutlet: UIButton!
    @IBOutlet weak var oxOutlet: UIButton!
    @IBOutlet weak var tigerOutlet: UIButton!
    @IBOutlet weak var bunnyOutlet: UIButton!
    @IBOutlet weak var dragonOutlet: UIButton!
    @IBOutlet weak var snakeOutlet: UIButton!
    @IBOutlet weak var horseOutlet: UIButton!
    @IBOutlet weak var goatOutlet: UIButton!
    @IBOutlet weak var monkeyOutlet: UIButton!
    @IBOutlet weak var chickenOutlet: UIButton!
    @IBOutlet weak var dogOutlet: UIButton!
    @IBOutlet weak var pigOutlet: UIButton!
    
    //MARK: FUNCTIONS and CALLS
    
    let animalsArray: [ChiniseZodiacAnimals] = []
    
    func descriptionSegue() {

        performSegue(withIdentifier: "singsToDescriptionSegue", sender: nil)
        
    }
    
    
    
    //MARK: ACTIONS
    
    @IBAction func didTapRat(_ sender: UIButton) {
        descriptionSegue()
        func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        guard let singDescritionViewController = segue.destination as? SingDescriptionViewController else {return}
            SingDescriptionViewController.out
        
        
        }
    }
    
    @IBAction func didTapOx(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapTiger(_ sender: UIButton) {
        descriptionSegue()

    }
    
    @IBAction func didTapBunny(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapDragon(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapSnake(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapHorse(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapGoat(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapMonkey(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapChicken(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapDog(_ sender: UIButton) {
        descriptionSegue()
    }
    
    @IBAction func didTapPig(_ sender: UIButton) {
        descriptionSegue()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

