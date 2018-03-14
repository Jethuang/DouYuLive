//
//  UIBarButtonItem-Extension .swift
//  DouYuLive
//
//  Created by 黄江龙 on 2018/3/14.
//  Copyright © 2018年 huangjianglong. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(imgName:String, hightImgName :String = "", rect:CGRect = CGRect.zero) {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: imgName), for: .normal)
        if hightImgName != ""{
            btn.setImage(UIImage(named:hightImgName), for: .highlighted)
        }
        if rect == CGRect.zero {
            btn.sizeToFit()
        }
        else {
            btn.frame = CGRect(origin: CGPoint.zero, size: rect.size)
        }
        
        self.init(customView: btn)
    }
}
