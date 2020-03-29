//
//  TutorialViewController.swift
//  EnglishForHotelManagement
//
//  Created by Macbook on 07/03/2020.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit

class FirstTutorialViewController: UIViewController {
    
    @IBOutlet weak var firstPageContinueBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstPageContinue(_ sender: Any) {
        
        performSegue(withIdentifier: "firstToSecond", sender: self)
        
    }
    
    
    
    


}
