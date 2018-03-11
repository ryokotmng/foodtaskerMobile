//
//  APIManager.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/03/11.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import FBSDKLoginKit

class APIManager {
    static let shared = APIManager()
    
    let baseURL = NSURL(string: "localhost:8000/")
    
    var accessToken = ""
    var refreshToken = ""
    var expired = Date()
    
    // APIs to login and out
    func login(userType: String, completionHandler: @escaping (NSError?) -> Void) {
        
    }
    func logout(completionHandler: @escaping (NSError?) -> Void) {
        
    }
}
