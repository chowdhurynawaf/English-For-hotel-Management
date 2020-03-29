//
//  signInViewController.swift
//  EnglishForHotelManagement
//
//  Created by Macbook on 09/03/2020.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import GoogleSignIn

class signInViewController: UIViewController   {
   
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self


       // GIDSignIn.sharedInstance().presentingViewController = self

        
        
    }
    
    
    
    
    @IBAction func connectWithGoogleSignIn(_ sender: Any) {
        
        GIDSignIn.sharedInstance().signIn()

        
    }
    
    
    
    
    
    @IBAction func connectWithFb(_ sender: Any) {
        
          let loginManager = LoginManager()
          
          loginManager.logIn(permissions: ["public_profile","email"], from: self) { (result, error) in
              
              
              if let error = error{
                  print("failed to login : " , error.localizedDescription)
                  
                  return
              }
              
              
//              guard let accessToken = AccessToken.current else {
//                  print("failed to get token")
//
//
//                  return
//              }
            
            if AccessToken.current != nil{
                
                self.performSegue(withIdentifier: "facebookToHome", sender: self)
            }
  
          }
        
    }
    
    
   
    
    


}
