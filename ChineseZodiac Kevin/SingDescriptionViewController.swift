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
    var horoscopereceived = Horoscope.init(as: nil)
    //CALLER
    
    

   // var animals: AnimalType?
    

    //MARK: OUTLETS
    
    @IBOutlet weak var animalSingOutlet: UIImageView!
    
    @IBOutlet weak var animalNameTitleOutlet: UILabel!
    
    @IBOutlet weak var animalYearsOutlet: UILabel!
    
    @IBOutlet weak var animalDescriptionOutlet: UILabel!
    
    //MARK: NAVIGATION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if horoscopereceived.animalsTypes != nil {
        
        animalSingOutlet.image = UIImage(named: horoscopereceived.animalsTypes?.image ?? "<no_name>")
            animalNameTitleOutlet.text = horoscopereceived.animalsTypes?.title
            animalYearsOutlet.text = horoscopereceived.animalsTypes?.years
            animalDescriptionOutlet.text = horoscopereceived.animalsTypes?.description
            
            print(horoscopereceived.animalsTypes?.title as Any)
            print(horoscopereceived.animalsTypes?.image as Any)
            print(horoscopereceived.animalsTypes?.years as Any)
            print(horoscopereceived.animalsTypes?.description as Any)

        }
        // updateView()
    }
}
