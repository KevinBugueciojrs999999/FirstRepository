//
//  SingDescriptionViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 18/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit

class SingDescriptionViewController: UIViewController {
    static let singsToDescriptionSegueIdentifier = "singsToDescriptionSegue"
    //CALLER
    
    
    var animalTitle: String?
    var animalYears: String?
    var animalDescription: String?
    var animalImage: UIImage?
   // var animals: AnimalType?
    

    //MARK: OUTLETS
    
    @IBOutlet weak var animalSingOutlet: UIImageView!
    
    @IBOutlet weak var animalNameTitleOutlet: UILabel!
    
    @IBOutlet weak var animalYearsOutlet: UILabel!
    
    @IBOutlet weak var animalDescriptionOutlet: UILabel!
    
    //MARK: NAVIGATION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        animalSingOutlet.image = animalImage
        animalNameTitleOutlet.text = animalTitle
        animalYearsOutlet.text = animalYears
        animalDescriptionOutlet.text = animalDescription
        
        // updateView()
    }
    
    func updateView() {
        // guard let animals = animals else {return}
        
        
//        animalSingOutlet.image = animals.image
//        animalNameTitleOutlet.text = animals.title
//        animalYearsOutlet.text = animals.years
//        animalDescriptionOutlet.text = animals.description
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
