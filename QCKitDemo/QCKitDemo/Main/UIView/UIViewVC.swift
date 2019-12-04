//
//  UIViewVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/23.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit


let kWidth = UIScreen.main.bounds.width
let kHeight = UIScreen.main.bounds.height
let kScreenBounds = UIScreen.main.bounds
typealias NullClosure = (()->())

let kVcFrame = CGRect(x: 0, y: 64, width: kWidth, height: kHeight - 64)

let mainColor = UIColor.qc_colorWithHexString("#00BFFF")

var timer:DispatchSourceTimer!

class UIViewVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.navigationItem.title = "UIViewDemo"
        
        // 普通视图
        let view = UIView()
            .frame((kWidth - 100) * 0.5, 100, 100, 50) //设置尺寸
            .borderColor(.red)  //设置边框颜色
            .backgroundColor(mainColor) //背景颜色
            .borderWidth(1)  //边框宽度
            .cornerRadiusWithClip(5) //圆角
            .superView(self.view)  //指定父视图，相当于将其添加到父视图上
            .addLongPressAction { (view) in
                 print("链式中长按了View")
            }
            .addAction({ (view) in  //添加点击事件
                print("链式中点击了View")
            })
//            .dispose() //如果不调用此view变量，可使用此函数
        
//        view.removeTap() //移除点击手势
//        view.removeLongPress() //移除长按手势
        
//        view.addTap { (view) in
//            print("非链式中点击了View")
//        }
        
        
        //带有数字标的视图
        let numbadge = UIView()
            .frame((kWidth - 100) * 0.5, view.bottom + 20, 100, 50) //设置尺寸
            .borderColor(.red)  //设置边框颜色
            .backgroundColor(mainColor) //背景颜色
            .borderWidth(1)  //边框宽度
            .cornerRadiusWithClip(5) //圆角
            .superView(self.view)  //指定父视图，相当于将其添加到父视图上
            .badgePadding(6,3)    //设置上下作用内边距
            .badgeBorderWidth(1.5)  //设置badge边框
            .badgeTop(10)          //设置badge与父视图顶部距离
            .badgeAlignRight(true) //设置badge右对齐
            .badgeHMargin(10)      //badge横向距离（若右对齐，则距右侧距离，若左对齐，则距左侧距离）
            .badgeBorderColor(.white) //设置badge顶部距离
            .badgeFont(UIFont.systemFont(ofSize: 12))//设置badge数字大小
            .badgeBgColor(.red)//设置badge背景色
            .badgeTextColor(.white)//设置badge文字颜色
            .showAllNumber(true)   //是否显示真实数字（如果设置为true,有多少显示到多少；否则大于100，显示为99+）
        
        numbadge.qc_badgeNumber = 100  //
        
        numbadge.badgeIsHidden(false) //设置badge是否隐藏
        
        
        //带有文字标的视图
        let textbadge = UIView()
            .frame((kWidth - 100) * 0.5, numbadge.bottom + 20, 100, 50) //设置尺寸
            .borderColor(.red)  //设置边框颜色
            .backgroundColor(mainColor) //背景颜色
            .borderWidth(1)  //边框宽度
            .cornerRadiusWithClip(5) //圆角
            .superView(self.view)  //指定父视图，相当于将其添加到父视图上
            .badgePadding(6,3)    //设置上下作用内边距
            .badgeBorderWidth(1.5)  //设置badge边框
            .badgeTop(10)          //设置badge与父视图顶部距离
            .badgeAlignRight(true) //设置badge右对齐
            .badgeHMargin(10)      //badge横向距离（若右对齐，则距右侧距离，若左对齐，则距左侧距离）
            .badgeBorderColor(.white) //设置badge顶部距离
            .badgeFont(UIFont.systemFont(ofSize: 12))//设置badge数字大小
            .badgeBgColor(.red)//设置badge背景色
            .badgeTextColor(.white)//设置badge文字颜色
            .badgeText("哈哈")
//            .showAllNumber(true)   //是否显示真实数字（如果设置为true,有多少显示到多少；否则大于100，显示为99+）
   
        textbadge.badgeIsHidden(false) //设置badge是否隐藏
        
        
        //带有圆点标的视图
        let dotbadge = UIView()
            .frame((kWidth - 100) * 0.5, textbadge.bottom + 20, 100, 50) //设置尺寸
            .borderColor(.red)  //设置边框颜色
            .backgroundColor(mainColor) //背景颜色
            .borderWidth(1)  //边框宽度
            .cornerRadiusWithClip(5) //圆角
            .superView(self.view)  //指定父视图，相当于将其添加到父视图上
            .badgePadding(6,3)    //设置上下作用内边距
//            .badgeBorderWidth(1.5)  //设置badge边框
            .badgeTop(10)          //设置badge与父视图顶部距离
            .badgeAlignRight(true) //设置badge右对齐
            .badgeHMargin(10)      //badge横向距离（若右对齐，则距右侧距离，若左对齐，则距左侧距离）
//            .badgeBorderColor(.white) //设置badge顶部距离
//            .badgeFont(UIFont.systemFont(ofSize: 12))//设置badge数字大小
            .badgeBgColor(.red)//设置badge背景色
            .badgeDotWidth(10)
        
        dotbadge.badgeIsHidden(false) //设置badge是否隐藏
    }
}


