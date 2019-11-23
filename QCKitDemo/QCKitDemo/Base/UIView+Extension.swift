
//
//  UIView+Extension.swift
//  PersonalBill
//
//  Created by yanqunchao on 2019/7/27.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit

extension UIView {
    
    func removeAllSubviews(){
        for sub in self.subviews{
            sub.removeFromSuperview()
        }
    }
    //加载xib文件
    class func viewFromXib() -> UIView? {
        return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.last as? UIView ?? nil
    } 
    // MARK: - 常用位置属性
    public var left:CGFloat {
        get {
            return self.frame.origin.x
        }
        set(newLeft) {
            var frame = self.frame
            frame.origin.x = newLeft
            self.frame = frame
        }
    }
    
    public var top:CGFloat {
        get {
            return self.frame.origin.y
        }
        
        set(newTop) {
            var frame = self.frame
            frame.origin.y = newTop
            self.frame = frame
        }
    }
    
    public var width:CGFloat {
        get {
            return self.frame.size.width
        }
        
        set(newWidth) {
            var frame = self.frame
            frame.size.width = newWidth
            self.frame = frame
        }
    }
    
    public var height:CGFloat {
        get {
            return self.frame.size.height
        }
        
        set(newHeight) {
            var frame = self.frame
            frame.size.height = newHeight
            self.frame = frame
        }
    }
    
    public var right:CGFloat {
        get {
            return self.left + self.width
        }
        set(newLeft) {
            var frame = self.frame
            frame.origin.x += frame.width
            self.frame = frame
        }
    }
    
    public var bottom:CGFloat {
        get {
            return self.top + self.height
        }
        set(newLeft) {
            var frame = self.frame
            frame.origin.y += frame.height
            self.frame = frame
        }
    }
    
    public var centerX:CGFloat {
        get {
            return self.center.x
        }
        
        set(newCenterX) {
            var center = self.center
            center.x = newCenterX
            self.center = center
        }
    }
    
    public var centerY:CGFloat {
        get {
            return self.center.y
        }
        
        set(newCenterY) {
            var center = self.center
            center.y = newCenterY
            self.center = center
        }
    }
}
