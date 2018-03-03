//
//  MealListTableViewController.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/03.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        
        return cell
    }
}
