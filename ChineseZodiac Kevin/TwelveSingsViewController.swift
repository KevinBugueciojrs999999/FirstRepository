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
    

    
    
    //MARK: ACTIONS
    
    @IBAction func didTapRat(_ sender: UIButton) {
        segueInteraction (as: .rat)
        
    }
    
    @IBAction func didTapOx(_ sender: UIButton) {
        segueInteraction (as: .ox)

    }
    
    @IBAction func didTapTiger(_ sender: UIButton) {
 segueInteraction (as: .tiger)

    }
    
    @IBAction func didTapBunny(_ sender: UIButton) {
        segueInteraction (as: .rabbit)
    }
    
    @IBAction func didTapDragon(_ sender: UIButton) {
        segueInteraction (as: .dragon)
    }
    
    @IBAction func didTapSnake(_ sender: UIButton) {
        segueInteraction (as: .snake)
    }
    
    @IBAction func didTapHorse(_ sender: UIButton) {
        segueInteraction (as: .horse)
    }
    
    @IBAction func didTapGoat(_ sender: UIButton) {
        segueInteraction (as: .goat)
    }
    
    @IBAction func didTapMonkey(_ sender: UIButton) {
        segueInteraction (as: .monkey)
    }
    
    @IBAction func didTapChicken(_ sender: UIButton) {
        segueInteraction (as: .rooster)
    }
    
    @IBAction func didTapDog(_ sender: UIButton) {
        segueInteraction (as: .dog)
    }
    
    @IBAction func didTapPig(_ sender: UIButton) {
        segueInteraction (as: .pig)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    var horoscopeSender = Horoscope.init(as: nil)

    //MARK: NAVIGATION
    
    func segueInteraction (as animal: Horoscope.AnimalType){
        horoscopeSender.animalsTypes = animal
        performSegue(withIdentifier: SingDescriptionViewController.singsToDescriptionSegueIdentifier, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == SingDescriptionViewController.singsToDescriptionSegueIdentifier {
        let singToDescription = segue.destination as! SingDescriptionViewController
        singToDescription.horoscopereceived = horoscopeSender
    }
 
    
}

}
