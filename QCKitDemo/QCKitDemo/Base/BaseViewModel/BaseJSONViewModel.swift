

//
//  BaseJSONViewModel.swift
//  JuMeng
//
//  Created by yanqunchao on 2019/8/7.
//  Copyright © 2019 yisichen. All rights reserved.
//

import UIKit
import SwiftyJSON
import SVProgressHUD
import YQCKit

typealias HandleDataArrayClosure =  (JSON)->([Any])

class BaseJSONViewModel: QCListViewModel {
    var urlStr:String!{
        return ""
    }
    var method:HTTPMethod{
        return .post
    }
    
    var handleClosure:HandleDataArrayClosure?
    
    override func loadMainData(isMore: Bool = false, param: [String : Any]) {
        super.loadMainData(isMore: isMore, param: param)
        
        switch self.method {
        case .post:
            RequestUtil.post(urlStr!, params: self.params, successHandler: { (data) in
                self.handlePagableData(array: self.handleClosure?(data) ?? data.arrayValue)
            }) { (err) in
                self.handleErrorData()
                SVProgressHUD.showError(withStatus: err)
            }
        case .get:
            RequestUtil.get(urlStr!, params: self.params, successHandler: { (data) in
                self.handlePagableData(array: self.handleClosure?(data) ?? data["data"].arrayValue)
            }) { (err) in
                self.handleErrorData()
                SVProgressHUD.showError(withStatus: err)
            }
        case.put:
            RequestUtil.put(urlStr!, params: self.params, successHandler: { (data) in
                self.handlePagableData(array: self.handleClosure?(data) ?? data["data"].arrayValue)
            }) { (err) in
                self.handleErrorData()
                SVProgressHUD.showError(withStatus: err)
            }
        default:
             self.handleErrorData()
        }
       
    }
}
