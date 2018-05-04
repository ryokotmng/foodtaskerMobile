//
//  DeliveryViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/05/04.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }
}
