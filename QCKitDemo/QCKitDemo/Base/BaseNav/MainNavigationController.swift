//
//  MainNavigationController.swift
//  PersonalBill
//
//  Created by yanqunchao on 2019/7/27.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

//MainNavigationController主控制器

import UIKit
class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isTranslucent = true
        self.navigationBar.barTintColor = .white//顶部Bar颜色
        //顶部页面标题文字颜色和字体大小
        #if swift(>=4.0)
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20.0)]
        #elseif swift(>=3.0)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 20.0)];
        #endif 
    }
    //重写push方法，拦截push的控制器
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0{
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        let topVC = self.topViewController
        return topVC!.preferredStatusBarStyle
    }
}
