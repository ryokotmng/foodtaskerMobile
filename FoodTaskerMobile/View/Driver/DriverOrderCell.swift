//
//  DriverOrderCell.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/05/05.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class DriverOrderCell: UITableViewCell {

    @IBOutlet weak var lbRestaurantName: UILabel!
    @IBOutlet weak var lbCustomerName: UILabel!
    @IBOutlet weak var lbCustomerAddress: UILabel!
    @IBOutlet weak var imgCustomerAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
