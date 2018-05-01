//
//  MealViewCell.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/22.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class MealViewCell: UITableViewCell {

    @IBOutlet weak var lbMealName: UILabel!
    @IBOutlet weak var lbMealShortDescription: UILabel!
    
    @IBOutlet weak var lbMealPrice: UILabel!
    @IBOutlet weak var imgMealImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
