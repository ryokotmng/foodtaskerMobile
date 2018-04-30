//
//  OrderViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/07.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit
import SwiftyJSON

class OrderViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    @IBOutlet weak var tbvMeals: UITableView!
    
    var tray = [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector
                (SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        getLatestOrder()
    }
    
    func getLatestOrder() {
        
        APIManager.shared.getLatestOrder { (json) in
            
            print(json)
            
            if let orderDetails = json["order"]["order_details"].array {
                self.tray = orderDetails
                self.tbvMeals.reloadData()
            }
        }
    }
}

extension OrderViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderItemCell", for: indexPath)
        
        return cell
    }
}
