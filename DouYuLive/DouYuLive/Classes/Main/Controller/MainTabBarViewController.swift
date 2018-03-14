//
//  MainTabBarViewController.swift
//  DouYuLive
//
//  Created by 黄江龙 on 2018/3/14.
//  Copyright © 2018年 huangjianglong. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UITabBar.appearance().tintColor = UIColor.orange
        addChildViewController(storyName: "Home")
        addChildViewController(storyName: "Classification")
        addChildViewController(storyName: "Follow")
        addChildViewController(storyName: "YuBa")
        addChildViewController(storyName: "Profile")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addChildViewController(storyName:String) {
        let vc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(vc)
    }
}
