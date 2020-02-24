//
//  SingDescriptionViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 18/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit

class SingDescriptionViewController: UIViewController {
    
    
    //MARK: UNIQUE CALLS
    
    static let singsToDescriptionSegueIdentifier = "singsToDescriptionSegue"
    var horoscopereceived = Horoscope.init(as: nil)

    
    
    //MARK: OUTLETS
    
    @IBOutlet weak var animalSingOutlet: UIImageView!
    
    @IBOutlet weak var animalNameTitleOutlet: UILabel!
    
    @IBOutlet weak var animalYearsOutlet: UILabel!
    
    @IBOutlet weak var animalDescriptionOutlet: UILabel!
    
    //MARK: LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if horoscopereceived.animalsTypes != nil {
            
            animalSingOutlet.image = UIImage(named: horoscopereceived.animalsTypes?.image ?? "<no_name>")
            animalNameTitleOutlet.text = horoscopereceived.animalsTypes?.title
            animalYearsOutlet.text = horoscopereceived.animalsTypes?.years
            animalDescriptionOutlet.text = horoscopereceived.animalsTypes?.description
            
            
        }
        // updateView()
    }
}
