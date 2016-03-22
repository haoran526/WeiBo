//
//  MainViewController.swift
//  HHWeiBo
//
//  Created by 惠浩 on 16/3/13.
//  Copyright © 2016年 惠浩. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(HomeViewController(), title: "首頁",imageName: "tabbar_home")
        addChildViewController(HomeViewController(), title: "消息",imageName: "tabbar_message_center")
        addChildViewController(HomeViewController(), title: "發現",imageName: "tabbar_discover")
        addChildViewController(HomeViewController(), title: "我",imageName: "tabbar_profile")
        
    }
    
    func addChildViewController(childVc: UIViewController, title : String, imageName : String) {
//1.創建子控制器 
        let childVc = HomeViewController()
        
//        2.設置控制器的屬性
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
//      3.包裝一個導航控制器
        let childNav = UINavigationController(rootViewController: childVc)
        
//        4.將控制器添加到MainViewContr
        addChildViewController(childNav)

   }
}