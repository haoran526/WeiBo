//
//  AppDelegate.swift
//  HHWeiBo
//
//  Created by 惠浩 on 16/3/12.
//  Copyright © 2016年 惠浩. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

//        設置全局顏色
        UITabBar.appearance().tintColor = UIColor.orangeColor()
        
//        創建window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

    
}

