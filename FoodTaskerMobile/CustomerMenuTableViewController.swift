//
//  CustomerMenuTableViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/03.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class CustomerMenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.19, green: 0.18, blue: 0.31, alpha: 1.0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "CustomerLogout" {
            
            FBManager.shared.logOut()
            User.currentUser.resetInfo()
        }
    }
}
