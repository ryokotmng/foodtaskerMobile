//
//  MealDetailsViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/04.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class MealDetailsViewController: UIViewController {

    @IBOutlet weak var imgMeal: UIImageView!
    @IBOutlet weak var lbMealName: UILabel!
    @IBOutlet weak var lbMealShortDescription: UILabel!
    
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var lbQty: UILabel!
    
    var meal: Meal?
    var qty = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeal()
    }
    
    func loadMeal() {
        
        if let price = meal?.price {
            lbTotal.text = "$\(price)"
        }
        
        lbMealName.text = meal?.name
        lbMealShortDescription.text = meal?.short_description
        
        if let imageUrl = meal?.image {
            Helpers.loadImage(imgMeal, "\(imageUrl)")
        }
    }
    
    @IBAction func addToTray(_ sender: Any) {
    }
    @IBAction func removeQty(_ sender: Any) {
        if qty >= 2 {
            qty -= 1
            lbQty.text = String(qty)
            
            if let price = meal?.price {
                lbTotal.text = "$\(price * Float(qty))"
            }
        }
    }
    
    @IBAction func addQty(_ sender: AnyObject) {
        
        if qty < 99 {
            qty += 1
            lbQty.text = String(qty)
            
            if let price = meal?.price {
                lbTotal.text = "$\(price * Float(qty))"
            }
        }
    }
}
