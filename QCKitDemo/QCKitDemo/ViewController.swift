//
//  ViewController.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/23.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit


let itemArr:[[String:AnyClass]] = [["UIView":UIViewVC.self],["UIButton":UIButtonVC.self],["UIImageView":UIImageViewVC.self],["UITextField":UITextFieldVC.self],["UITextView":UITextViewVC.self],["UIAlertController":UIAlertControllerVC.self],["NotificatinCenter":NotificationCenterVC.self],["KVO":KVOVC.self],["DispatchGroup":DispatchGroupVC.self]]

class ViewController: BaseViewController {
    let columnCount = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "QCKitDemo"
        
        self.collectionView = QCCollectionView(frame: kVcFrame,cellCls: DemoItemCell.self)
            .emptyView(emptyTitle: "暂无相关数据", emptyImageName: "no_works")
            .backgroundColor(.white)
            .layout(sectionInset: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10), itemSize: CGSize(width: (kWidth - 20 - (CGFloat(columnCount) - 1) * 10) / CGFloat(columnCount), height: (kWidth - 20 - (CGFloat(columnCount) - 1) * 10) / CGFloat(columnCount)), minimumLineSpacing: 10, minimumInteritemSpacing: 10)
            .cell({[weak self] (cell, idx, model) in
                let cell = cell as! DemoItemCell
                let model = model as! [String:AnyClass]
                cell.titleLab.text = model.keys.first!
            })
            .cellDidSelect({[weak self] (indexPath, model) in
                var model = model as! [String:AnyClass]
                let type = model.values.first as? BaseViewController.Type
                let vc = type!.init()
                self?.navigationController?.pushViewController(vc, animated: true)
            })
            .defaultData(itemArr)
        
        self.view.addSubview(self.collectionView!)
        
    }
}

