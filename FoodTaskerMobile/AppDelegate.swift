//
//  AppDelegate.swift
//  FoodTaskerMobile
//
//  Created by Ryoko Tominaga on 2018/01/15.
//  Copyright © 2018年 Ryoko Tominaga. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import Stripe

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.19, green: 0.18, blue: 0.31, alpha: 0.1)
        UINavigationBar.appearance().tintColor = UIColor.white
        
        STPPaymentConfiguration.shared().publishableKey = STRIPE_PUBLIC_KEY

        return FBSDKApplicationDelegate.sharedInstance().application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(
            app,
            open: url,
            sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String,
            annotation: nil
        )
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        FBSDKAppEvents.activateApp()
    }

    func applicationWillTerminate(_ application: UIApplication) {

    }


}

