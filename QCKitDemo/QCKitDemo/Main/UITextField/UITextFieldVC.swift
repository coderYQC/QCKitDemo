//
//  UITextFieldVC.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/11/23.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import SVProgressHUD
class UITextFieldVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UITextFieldDemo"
        
        //普通输入框
        let tf = UITextField()
            .frame(16,120, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            //                    .paddingRight(16) //设置右边距
            .rightView("thumbIcon", true, seperatorLineColor: mainColor, { (_) in
                print("点击右侧图标事件")
            })//设置输入框右侧图标、是否带有分割线、分割线颜色（默认值为.lightGray）
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入...")
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
 
        //金额输入框
        let moneyTf = UITextField()
            .frame(16,tf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入金额")
            //                    .textFieldType(.money)
            .maxMoney(1000, {
                SVProgressHUD.showInfo(withStatus: "输入金额过大，请重新选择")
            })//若调用此函数，则textFieldType属性默认为money
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        //整数金额输入框
        let numberMoneyTf = UITextField()
            .frame(16,moneyTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入整数金额")
            .maxNumberMoney(10000, {
                 SVProgressHUD.showInfo(withStatus: "输入金额过大，请重新选择")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //整数输入框
        let numberTf = UITextField()
            .frame(16,numberMoneyTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入整数")
            .textFieldType(.number, {
                SVProgressHUD.showInfo(withStatus: "请输入整数")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })

        //中文输入框
        let chineseTf = UITextField()
            .frame(16,numberTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入中文")
            .textFieldType(.chineseCharacters, {
                SVProgressHUD.showInfo(withStatus: "请输入中文")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //手机号输入框
        let phoneTf = UITextField()
            .frame(16,chineseTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入手机号")
            .textFieldType(.phone, {
                SVProgressHUD.showInfo(withStatus: "请输入手机号")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //邮箱输入框
        let emeilTf = UITextField()
            .frame(16,chineseTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入邮箱")
            .textFieldType(.email, {
                SVProgressHUD.showInfo(withStatus: "请输入正确的邮箱")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //身份证输入框
        let idTf = UITextField()
            .frame(16,emeilTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入身份证")
            .textFieldType(.idCard, {
                SVProgressHUD.showInfo(withStatus: "请输入正确的身份证")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //字母输入框
        let letterTf = UITextField()
            .frame(16,idTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入字母")
            .textFieldType(.letter, {
                SVProgressHUD.showInfo(withStatus: "请输入正确的英文字母")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        //字母和数字输入框
        let letterOrNumberTf = UITextField()
            .frame(16,letterTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入字母数字")
            .textFieldType(.letterOrNumber, {
                SVProgressHUD.showInfo(withStatus: "请输入正确的字母或数字")
            })
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
        
        //自定义规则输入框
        let customRegexTf = UITextField()
            .frame(16,letterOrNumberTf.bottom + 10, kWidth-32, 40)
            .backgroundColor(.white)
            .cornerRadiusWithClip(20)
            .font(14) //设置字体大小
            .textColor(mainColor) //设置字体颜色
            .borderWidth(1)
            .borderColor(mainColor)
            .superView(self.view)
            .paddingLeft(16)  //设置左边距
            .paddingRight(16) //设置右边距
            .tintColor(mainColor)
            .placeholderColor(mainColor)
            .placeholder("请输入自定义规则输入框")
            .textFieldTypeRegex("[0-9]*", {
                SVProgressHUD.showInfo(withStatus: "请输入整数")
            })//自定义规则输入框（正则表达式，及不符合规则的回调）
            .valuesChanged({ (txt) in
                print(txt)
            })
            .beginEditing({
                print("开始编辑")
            })
            .endEditing({ (txt) in
                print("结束编辑")
            })
    } 
}
