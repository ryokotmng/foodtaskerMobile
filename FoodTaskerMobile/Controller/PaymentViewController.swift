//
//  PaymentViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/05.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit
import Stripe

class PaymentViewController: UIViewController {

    @IBOutlet weak var cardTextField: STPPaymentCardTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
