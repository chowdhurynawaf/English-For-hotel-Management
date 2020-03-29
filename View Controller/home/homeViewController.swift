//
//  homeViewController.swift
//  EnglishForHotelManagement
//
//  Created by sdmgap3 on 2/25/20.
//  Copyright © 2020 Shahid Sabir. All rights reserved.
//

import UIKit

class homeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var viewdesign2: UIView!
    @IBOutlet weak var viewdesign: UIView!
    @IBOutlet weak var viewdesing3: UIView!
    
    @IBOutlet weak var imageview: UIImageView!
    var tag = ["TEST","Awards & Stats","SETTINGS"]
    var icon = ["Group 140","flaticon1565352165-svg","Union"]
    var titleL = ["Plat Quiz","Track Progress","Your Profile"]
    @IBOutlet weak var dateformate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewdesign.layer.cornerRadius = 15
        viewdesign2.layer.cornerRadius = 15
        imageview.layer.cornerRadius = 50
        // Do any additional setup after loading the view.
        
        var currentDate = Date()
        let formatter = DateFormatter()
        print(currentDate.asString())
        
        
        let date = datee()
        
        print(date)
        dateformate.text = date
        
    }
    

    func datee() ->String{
        
        let date = Calendar(identifier: .gregorian)
        let formatter = DateFormatter()
        formatter.calendar = date
        formatter.dateFormat = "E d MMM"
        
        let today = Date()
        let dataString = formatter.string(from: today)
        
        return dataString
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tag.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myhomeCell", for: indexPath)as! homeTableViewCell
        cell.tagLB.text = tag[indexPath.row]
        cell.titleLB.text = titleL[indexPath.row]
        cell.iconLB.image = UIImage(named: icon[indexPath.row] + ".png")
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    

}


extension Date{
    
    func asString() -> String{
        
        let dateformetter = DateFormatter()
        dateformetter.dateFormat = "E d MMM"
        return dateformetter.string(from: self)
        
    }
    
    
}
