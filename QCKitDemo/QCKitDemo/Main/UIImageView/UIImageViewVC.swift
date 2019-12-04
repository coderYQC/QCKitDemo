//
//  UIImageViewVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/23.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit

class UIImageViewVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UIImageViewDemo"
        
        let imgView = UIImageView()
            .frame(10, 200, kWidth - 20, 100)
            .backgroundColor(.red)
            .image("alert_bg")
//            .image(UIImage(named: "alert_bg")!)
            .contentMode(.scaleAspectFill)
            .masksToBounds(true)
            .addAction({ (iv) in
                print("点击了图片")
            })
            .addLongPressAction({ (iv) in
                print("长按了图片")
            })
            .superView(self.view)
        
    } 
}
