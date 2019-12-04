//
//  NotificationCenterVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/12/2.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit

class NotificationCenterVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "NotificationCenterDemo"
        
        NotificationCenter.default.qc_addNotication(observer: self, name: "test") { (noti) in
            let noti = noti.userInfo as! [String:String]
            print("收到了aaa的通知----\(noti["testKey"] ?? "")")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let userInfo = ["testKey":"test"]
        NotificationCenter.default.qc_postNotication(name: "test", userInfo: userInfo)
    }

    deinit {//移除通知
//        NotificationCenter.default.qc_removeNotication(observer: self, name: "test")
        NotificationCenter.default.qc_removeAllNotication(observer: self)
    }
}
