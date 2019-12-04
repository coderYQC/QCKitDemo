
//
//  UIAlertControllerVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/25.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit

class UIAlertControllerVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "UIAlertControllerDemo"
         
        let btn =  UIButton()
            .frame(16,  150, kWidth - 32, 40)
            .textFont(15) //设置字体大小
            .title("普通弹窗提醒") //设置标题
            .backgroundColor(.white) //设置背景色
            .titleColor(mainColor) //标题颜色
            .borderWidth(1) //边框宽度
            .cornerRadius(5) // 圆角值
            .borderColor(.green) //边框颜色
            .superView(self.view) //父视图
            .addAction({[weak self] (btn) in   //按钮的点击事件
                
                UIAlertController(title: "确定删除吗？",
                                  message: "删除后，系统将无法恢复，请谨慎操作"
                    )
                    .addAction(title: "取消", handler: { (_) in
                        print("取消")
                    })
                    .addAction(title: "确定", handler: { (_) in
                        print("确定")
                    })
                    .show()
            })
        
        let btn1 =  UIButton()
            .frame(16,  btn.bottom + 10, kWidth - 32, 40)
            .textFont(15) //设置字体大小
            .title("主题色弹窗提醒") //设置标题
            .backgroundColor(.white) //设置背景色
            .titleColor(mainColor) //标题颜色
            .borderWidth(1) //边框宽度
            .cornerRadius(5) // 圆角值
            .borderColor(.green) //边框颜色
            .superView(self.view) //父视图
            .addAction({[weak self] (btn) in   //按钮的点击事件
                
                UIAlertController(title: "确定删除吗？",
                                  message: "删除后，系统将无法恢复，请谨慎操作",
                                  mainColor:mainColor,
                                  textColor:.white
                    )
                    .addAction(title: "取消", handler: { (_) in
                        print("取消")
                    })
                    .addAction(title: "确定", handler: { (_) in
                        print("确定")
                    })
                    .show()
            })
        
        let btn2 =  UIButton()
            .frame(16,  btn1.bottom + 10, kWidth - 32, 40)
            .textFont(15) //设置字体大小
            .title("背景图片色弹窗提醒") //设置标题
            .backgroundColor(.white) //设置背景色
            .titleColor(mainColor) //标题颜色
            .borderWidth(1) //边框宽度
            .cornerRadius(5) // 圆角值
            .borderColor(.green) //边框颜色
            .superView(self.view) //父视图
            .addAction({[weak self] (btn) in   //按钮的点击事件
                
                UIAlertController(title: "确定删除吗？",
                                  message: "删除后，系统将无法恢复，请谨慎操作",
                                  textColor:.white,
                                  backgroundImage:"alert_bg"
                    )
                    .addAction(title: "取消", handler: { (_) in
                        print("取消")
                    })
                    .addAction(title: "确定", handler: { (_) in
                        print("确定")
                    })
                    .show()
            })
        
        
        let btn3 =  UIButton()
            .frame(16,  btn2.bottom + 10, kWidth - 32, 40)
            .textFont(15) //设置字体大小
            .title("段落文字弹窗提醒") //设置标题
            .backgroundColor(.white) //设置背景色
            .titleColor(mainColor) //标题颜色
            .borderWidth(1) //边框宽度
            .cornerRadius(5) // 圆角值
            .borderColor(.green) //边框颜色
            .superView(self.view) //父视图
            .addAction({[weak self] (btn) in   //按钮的点击事件
                
                let paragraph = NSMutableParagraphStyle()
                paragraph.alignment = .left
                paragraph.paragraphSpacing = 10
                paragraph.lineSpacing = 5
                
                UIAlertController(title: "使用说明",
                                  message: "1.使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1使用说明1。\r\n2.使用说明2使用说明2使用说明2。\r\n3.使用说明3使用说明3使用说明3。\r\n4.使用说明4使用说明4使用说明4。\r\n5.使用说明5使用说明5使用说明5。",
                                  messageParagraphStyle:paragraph
                    )
//                    .addAction(title: "取消", handler: { (_) in
//                        print("取消")
//                    })
                    .addAction(title: "确定", handler: { (_) in
                        print("确定")
                    })
                    .show()
            })
        
    }
    
 
}
