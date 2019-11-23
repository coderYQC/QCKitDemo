
//
//  UIButton+Extension.swift
//  PersonalBill
//
//  Created by yanqunchao on 2019/7/27.
//  Copyright © 2019 yanqunchao. All rights reserved.
//
 
import UIKit

class ItemLeftButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        let Offset: CGFloat = 15
        titleLabel?.sizeToFit()
        titleLabel?.frame = CGRect(x: -Offset, y: height - 15, width: width - Offset, height: (titleLabel?.height)!)
        
        titleLabel?.textAlignment = .center
        imageView?.frame = CGRect(x: -Offset, y: 0, width: width - Offset, height: height - 15)
        
        imageView?.contentMode = .center
    }
}

class ItemRightButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        let Offset: CGFloat = 15
        titleLabel?.sizeToFit()
        titleLabel?.frame = CGRect(x: Offset, y: height - 15, width: width + Offset, height: (titleLabel?.height)!)
        titleLabel?.textAlignment = .center
        imageView?.frame = CGRect(x: Offset, y: 0, width: width + Offset, height: height - 15)
        imageView?.contentMode = UIView.ContentMode.center
    }
    
}
