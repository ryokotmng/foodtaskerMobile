//
//  Restaurant.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/21.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import Foundation
import SwiftyJSON

class Restaurant {
    
    var id: Int?
    var name: String?
    var address: String?
    var logo: String?
    
    init(json: JSON) {
        self.id = json["id"].int
        self.name = json["name"].string
        self.address = json["address"].string
        self.logo = json["logo"].string
    }
}
