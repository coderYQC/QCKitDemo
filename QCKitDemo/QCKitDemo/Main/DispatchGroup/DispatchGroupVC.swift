//
//  DispatchGroupVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/12/2.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit
class DispatchGroupVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "DispatchGroupDemo"
        QCDispatchGroup([load1,load2], {
            print("都成功")
        }) {
            print("没有都成功")
        }
    }
    
    func load1(success:NullClosure?,fail:NullClosure?){
//        success?()
        fail?()
    }
    func load2(success:NullClosure?,fail:NullClosure?){
        success?()
    }
}
