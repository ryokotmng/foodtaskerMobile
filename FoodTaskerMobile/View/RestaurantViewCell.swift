//
//  RestaurantViewCell.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/21.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class RestaurantViewCell: UITableViewCell {

    @IBOutlet weak var lbRestaurantName: UILabel!
    @IBOutlet weak var lbRestaurantAddress: UILabel!
    @IBOutlet weak var imageRestaurantLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
