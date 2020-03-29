//
//  SecondTutorialViewController.swift
//  EnglishForHotelManagement
//
//  Created by Macbook on 07/03/2020.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit

class SecondTutorialViewController: UIViewController {
    
    
    @IBOutlet weak var secondpageContinueBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func secondBtnContinuer(_ sender: Any) {
        
        performSegue(withIdentifier: "secondToThird", sender: self)
        
        
    }
    
    
}
