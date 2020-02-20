//
//  SingDescriptionViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 18/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit

class SingDescriptionViewController: UIViewController {
    
    //CALLER
    
    
    var animals: ChiniseZodiacAnimals?
    
    //MARK: OUTLETS
    
    @IBOutlet weak var animalSingOutlet: UIImageView!
    
    @IBOutlet weak var animalNameTitleOutlet: UILabel!
    
    @IBOutlet weak var animalYearsOutlet: UILabel!
    
    @IBOutlet weak var animalDescriptionOutlet: UILabel!
    
    //MARK: NAVIGATION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let animals = animals else {return}
        
        animalSingOutlet.image = UIImage(named: animals.image)
        animalNameTitleOutlet.text = animals.sing
        animalYearsOutlet.text = animals.years
        animalDescriptionOutlet.text = animals.description
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
