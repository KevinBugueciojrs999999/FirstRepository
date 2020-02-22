//
//  PickerViewController.swift
//  ChineseZodiac Kevin
//
//  Created by user164197 on 18/02/2020.
//  Copyright © 2020 Kevin Buguecio. All rights reserved.
//

import UIKit
protocol DatePickerDelegate {
    func datePickerValue (_ date: Date)
}
class PickerViewController: UIViewController {
    
    static let pickerToDescriptionSegueIdentifier = "singsToDescriptionSegue"
    
    
    
    //MARK: OUTLETS
    
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    @IBOutlet weak var nextOutlet: UIButton!
    
    

    
    
    //MARK: ACTIONS
    
    
    @IBAction func didTapNextButton(_ sender: UIButton) {
        datePickerValue(datePickerOutlet.date)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func datePickerValue (_ date: Date) {

        
        if horoscopeSender.typeForDate(datePickerOutlet.date) != nil {
            horoscopeSender.animalsTypes = horoscopeSender.typeForDate(datePickerOutlet.date)!
        }
    }

    var horoscopeSender = Horoscope.init(as: nil)
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "pickerToDescriptionSegue"  {
        let pickerVC = segue.destination as! SingDescriptionViewController
        pickerVC.horoscopereceived = horoscopeSender
    }
    
}
}


