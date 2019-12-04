

//
//  KVOVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/12/2.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit
class KVOVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "KVODemo"
         
        QCKVO_ADD(self, observed: (self.view,"backgroundColor")) {[weak self] (change) in
            print(self!.view.backgroundColor!)
        }
        self.view.backgroundColor = .red
    }
    deinit {//移除kvo监听
        QCKVO_REMOVE(self)
    }

}
