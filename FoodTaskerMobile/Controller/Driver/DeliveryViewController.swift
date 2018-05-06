//
//  DeliveryViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/05/04.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit
import MapKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    @IBOutlet weak var lbCustomerName: UILabel!
    @IBOutlet weak var lbCustomerAddress: UILabel!
    @IBOutlet weak var imgCustomerAvatar: UIImageView!
    
    @IBOutlet weak var viewInfo: UIView!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var bComplete: UIButton!
    
    var orderId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        loadData()
    }

    func loadData() {
        
        APIManager.shared.getCurrentDriverOrder { (json) in
            
            print(json)
            
            let order = json["order"]
            
            if let id = order["id"].int, order["status"] == "On the way" {
                
                self.orderId = id
                
                let from = order["address"].string!
                let to = order["restaurant"]["address"].string!
                
                let customerName = order["customer"]["name"].string!
                let customerAvatar = order["customer"]["avatar"].string!
                
                self.lbCustomerName.text = customerName
                self.lbCustomerAddress.text = from
                
                self.imgCustomerAvatar.image = try! UIImage(data: Data(contentsOf: URL(string: customerAvatar)!))
                self.imgCustomerAvatar.layer.cornerRadius = 50/2
                self.imgCustomerAvatar.clipsToBounds = true
                
            } else {
                
                self.map.isHidden = true
                self.viewInfo.isHidden = true
                self.bComplete.isHidden = true
                
                // Showing a message here
                
                let lbMessage = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 40))
                lbMessage.center = self.view.center
                lbMessage.textAlignment = NSTextAlignment.center
                lbMessage.text = "You don't have any orders for delivery."
                
                self.view.addSubview(lbMessage)
            }
        }
    }
}
