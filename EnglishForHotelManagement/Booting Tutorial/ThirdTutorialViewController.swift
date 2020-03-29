//
//  ThirdTutorialViewController.swift
//  EnglishForHotelManagement
//
//  Created by Macbook on 07/03/2020.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit

class ThirdTutorialViewController: UIViewController {
    
    
    @IBOutlet weak var getStartedBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStartedBtn(_ sender: Any) {
        
        
        performSegue(withIdentifier: "getStartedToSignIn", sender: self)
    }
    
    
}
