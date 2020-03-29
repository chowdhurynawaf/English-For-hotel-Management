//
//  vocabolaryViewController.swift
//  EnglishForHotelManagement
//
//  Created by sdmgap3 on 2/29/20.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit

class vocabolaryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var indexNo: Int?

    var getname = [String]()
    var vocabulary: Int!
    var getimage = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        print("get name : ",getname)
    }
    
    func customvocabulary(vocabulary: Int, title: String){
        self.vocabulary = vocabulary
        self.title = title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getname.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vocabularycell = tableView.dequeueReusableCell(withIdentifier: "myvocabularyCell", for: indexPath) as! vocabularyTableViewCell
        backgroundColor(index: indexPath.row, vocabularycell: vocabularycell)
        vocabularycell.vocabularyLB.text = getname[indexPath.row]
        vocabularycell.vocabularyImg.image = UIImage(named: getimage[indexPath.row] + ".png")
        
        return vocabularycell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                          indexNo = indexPath.item
        switch indexNo {
        case 0:
            performSegue(withIdentifier: "vocabularyTovocabularydetiles", sender: self)
            
            case 1:
            performSegue(withIdentifier: "vocabularyToreception", sender: self)
            
            case 2:
            performSegue(withIdentifier: "vocabularyTovocabularydetiles", sender: self)
            
            case 3:
            performSegue(withIdentifier: "vocabularyTovocabularydetiles", sender: self)
            
            case 4:
            performSegue(withIdentifier: "vocabularyTovocabularydetiles", sender: self)
            
            case 5:
            performSegue(withIdentifier: "vocabularyTointerview", sender: self)
            
        default:
            break
        }

    }
    
    func backgroundColor(index: Int, vocabularycell: vocabularyTableViewCell){
        
        switch index {
        case 0:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 1, green: 0.4612171054, blue: 0.2816648185, alpha: 1)
        case 1:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.5615808368, green: 0.5978277326, blue: 1, alpha: 1)
            case 2:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.1806837916, green: 0.2663606703, blue: 0.7171670794, alpha: 1)
            case 3:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.9999938607, green: 0.6175633073, blue: 0.2714775205, alpha: 1)
            case 4:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.1539131701, green: 0.8790430427, blue: 0.6829487085, alpha: 1)
            case 5:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.9983653426, green: 0.2637571394, blue: 0.677041173, alpha: 1)
            
            
            
        default:
            vocabularycell.vocabularyview.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        }
    }
}
