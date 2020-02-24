//
//  PickerViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 18/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {
    
    //MARK: UNIQUE CALL
    
    static let pickerToDescriptionSegueIdentifier = "singsToDescriptionSegue"
    
    //MARK: OUTLETS
    
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    //MARK: ACTIONS
    
    
    @IBAction func didTapNextButton(_ sender: UIButton) {
        datePickerValue(datePickerOutlet.date)
    }
    
    //MARK: LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: FUNCTION FOR VALUE
    
    func datePickerValue (_ date: Date) {
        
        if horoscopeSender.typeForDate(datePickerOutlet.date) != nil {
            horoscopeSender.animalsTypes = horoscopeSender.typeForDate(datePickerOutlet.date)!
        }
    }
    
    
    // MARK: - Navigation
    
    var horoscopeSender = Horoscope.init(as: nil)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pickerToDescriptionSegue"  {
            let pickerVC = segue.destination as! SingDescriptionViewController
            pickerVC.horoscopereceived = horoscopeSender
        }
        
    }
}


