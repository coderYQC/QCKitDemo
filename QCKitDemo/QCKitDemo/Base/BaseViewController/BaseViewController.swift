//
//  BaseViewController.swift
//  PersonalBill
//
//  Created by yanqunchao on 2019/7/27.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import FDFullscreenPopGesture//添加全屏侧滑
import SVProgressHUD
import YQCKit
class BaseViewController: UIViewController {
 
    public var statusBarVi = UIView()
    public var isFirstIn = true
    public var VcHeight:CGFloat?
    var bottomview:UIView?
    
    var clickClosure:(()->())?
    var barItemClickClosure:(()->())?
    var descStr:String?
    
    
    var tableView:QCTableView?
    var collectionView:QCCollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.view.backgroundColor = .white
        
        
        self.setNavBar()
        if navigationController?.viewControllers != nil {
            if (navigationController?.viewControllers.count)! >  1 {
                self.navigationItem.leftBarButtonItem = UIBarButtonItem.barButton(type: .Left, image: UIImage(named:"navi_back")!, target: self, action: #selector(back))
            }
        } 
    }
    
    public func setNavBar(){
        self.statusBarVi.backgroundColor = UIColor.init(white: 1, alpha: 0)
        view.addSubview(statusBarVi)
        if #available(iOS 11.0, *) { //高于 iOS 11.0
            self.automaticallyAdjustsScrollViewInsets = true
        } else {
            self.automaticallyAdjustsScrollViewInsets = false
        }
    }
    
    
    override open func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        var viewHeight = self.view.height
//        var tabbarHeight:CGFloat = 0
//        if navigationController?.viewControllers != nil &&  (navigationController?.viewControllers.count)! >  1 {
//            tabbarHeight = 0
//        }else{
//            tabbarHeight = Constants.tabBarHeight
//        }
//        if viewHeight < kHeight - tabbarHeight - ( Constants.isNormalStatusBar ? 0 : 20) {
//            viewHeight = kHeight - tabbarHeight - (Constants.isNormalStatusBar ? 0 : 20)
//        }
//        Constants.kVcHeight = viewHeight
//
//        self.bottomview?.frame = CGRect(x: 0, y: Constants.kVcHeight - kTabBarHeight, width: kHeight, height: kTabBarHeight)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        QCKVO_REMOVE(self)
    }
    
    @objc func back(){
        _ = navigationController?.popViewController(animated: true)
    }
//    func configureRightBarItem(itemTitle:String,descStr:String = "",action:(()->())? = {  }){
//        self.descStr = descStr
//        self.barItemClickClosure = action
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem.barButton(title: itemTitle, titleColor: ColorMacro.MAIN_TEXT_COLOR, target: self, action: #selector(barItemClick))
//    }
//    func configureBottomView(btnTitle:String,action:(()->())?){
//        self.clickClosure = action
//        self.bottomview = UIView()
//        let btn = UIButton(type: .custom)
//        btn.frame = CGRect (x: 0, y: 0, width: kWidth, height: 49)
//        btn.backgroundColor = ColorMacro.APP_MAIN_COLOR
//        btn.setTitle(btnTitle, for: .normal)
//        btn.setTitleColor(.white, for: .normal)
//        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
//        btn.addTarget(self, action: #selector(btnClicked(btn:)), for: .touchUpInside)
//        self.bottomview!.addSubview(btn)
//        self.view.addSubview(self.bottomview!)
//    }
//    @objc func btnClicked(btn: UIButton) {
//        self.clickClosure?()
//    }
//    @objc func barItemClick(btn: UIButton) {
//        self.barItemClickClosure?()
//        let useView = BarButtonItemAlertView.viewFromXib()
//            as! BarButtonItemAlertView
//        useView.contentStr = self.descStr ?? ""
//        useView.showInWindow(withBackgoundTapDismissEnable: true)
//    }
    
    
}
