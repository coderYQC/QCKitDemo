//
//  UILabelVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/12/2.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit
class UILabelVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UILabelDemo"
        //普通label
        let label = UILabel()
            .frame(16,  300, kWidth - 32, 40)
            .text("普通标签")
            .font(UIFont.systemFont(ofSize: 28, weight: .bold))
            .borderColor(mainColor)
            .borderWidth(1)
            .textColor(mainColor)
            .textAlignment(.center)
            .superView(self.view)
//            .fitSize()//是否自适应内容，若自适应，则调用此函数
            .addAction { (label) in
                 print("点击了普通Label")
            }
        
        //添加内边距的label
        let label1 = QCPadddingLabel()
            .frame(0, label.bottom + 20, kWidth, 50)
            .font(14)
            .textColor(mainColor)
            .superView(self.view)
            .numberOfLines(3)
            .backgroundColor(.white)
            .borderColor(mainColor)
            .borderWidth(1)
            .numberOfLines(0)
            .textInsets(UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16))
            .addAction { (label) in
                 print("点击了带有内边距Label")
            }
        
        label1.text = "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"
        label1.sizeToFit() //若调用此函数，则内容自适应，否则为初始化设置的尺寸
        
    }
}
