//
//  HomeViewController.swift
//  DouYuLive
//
//  Created by 黄江龙 on 2018/3/14.
//  Copyright © 2018年 huangjianglong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//MARK: initUI
extension HomeViewController{
    private func initUI(){
        initNavigationBarItem()
    }
    
    private func initNavigationBarItem(){
        let leftItem = UIBarButtonItem(imgName: "logo")
        self.navigationItem.leftBarButtonItem = leftItem
        
        let size = CGSize(width: 35, height: 35)
        
        let searchItem = UIBarButtonItem(imgName: "btn_search", hightImgName: "btn_search_clicked", rect: CGRect(origin: CGPoint.zero, size: size))
        let saoItem = UIBarButtonItem(imgName: "Image_scan", hightImgName: "Image_scan_click", rect: CGRect(origin: CGPoint.zero, size: size))
        let historyItem = UIBarButtonItem(imgName: "image_my_history", hightImgName: "Image_my_history_click", rect: CGRect(origin: CGPoint.zero, size: size))

        self.navigationItem.rightBarButtonItems = [historyItem,searchItem,saoItem]
        
    }
}
