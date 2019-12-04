
//
//  UIButtonVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/23.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit

class UIButtonVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad() 
        self.navigationItem.title = "UIButtonDemo"
        
        let btn =  UIButton()
            .frame(16,  300, kWidth - 32, 40)
            .textFont(15) //设置字体大小
//            .textFont(UIFont.systemFont(ofSize: 15))
            .title("弹窗提醒") //设置标题
            .backgroundColor(.white) //设置背景色
            .image("thumbIcon")  //设置图片
//            .showsTouchWhenHighlighted(false)
            
            .backgroundColor_Sel(.red)//选择背景色
            .backgroundColor_Disable(.gray)//禁用背景色
            .backgroundColor_HighLight(mainColor)//高亮背景色
        
            
            .titleColor(mainColor) //标题颜色
            .titleColor_Sel(.white) //标题选择颜色
            .titleColor_Disable(.white) //标题禁用颜色
            .titleColor_HighLight(.white) //标题高亮颜色
            
            .borderWidth(1) //边框宽度
            .cornerRadius(5) // 圆角值
            
            .borderColor(.green) //边框颜色
            .borderColor_HighLight(.blue) //边框高亮色
            .borderColor_Disable(.red) //边框禁用色
            .borderColor_Sel(.green)
            
            .superView(self.view) //父视图
            
            .layoutButton(.right, 10, false) //........文字跟图片的方位及距离,及文字图片自适应
            
            
//            .addActionWithControlEvent({ (btn) in
//                print("手指按下")
//            }, .touchDown)
//            .addActionWithControlEvent({ (btn) in
//                print("手指抬起")
//            }, .touchUpInside)
//            .addActionWithControlEvent({ (btn) in
//                print("手指多次点击")
//            }, .touchDownRepeat)
//            .addActionWithControlEvent({ (btn) in
//                print("点击完成")
//            }, .primaryActionTriggered)
//            .addActionWithControlEvent({ (btn) in
//                print("全部事件")
//            }, .allEvents)
            .addAction({[weak self] (btn) in   //按钮的点击事件
//                btn.isEnabled = false
                btn.isSelected = !btn.isSelected
            })
    }
    
}
