
//
//  UITextViewVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/25.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit
import SVProgressHUD
class UITextViewVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UITextViewDemo"
        
        let tv = UITextView()
            .frame(16, 120, kWidth - 32, 100)
            .cornerRadius(5)//圆角
            .borderColor(mainColor)//边框颜色
            .borderWidth(1)//边框宽度
            .backgroundColor(.white)//背景色
            .placeHolder("请输入备注内容...(最多输入50字)")//占位文字
            //            .attributedPlaceHolder(attributedPlaceHolder)//属性字符串占位文字
            .placeHolderColor(mainColor)//占位文字颜色
            .lineFragmentPadding(0)//文本内边距
            .textContainerInset(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))//文本内容内边距
            .textColor(mainColor)//文本颜色
            .font(14)//字体大小
            .tintColor(.red)//光标颜色
            .superView(self.view)
            .maxLength(50, {
                SVProgressHUD.showInfo(withStatus: "只能输入50个字哟！！！！！")
            })//最大输入字数
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (text) in
                print("结束编辑")
            })
    }
}
