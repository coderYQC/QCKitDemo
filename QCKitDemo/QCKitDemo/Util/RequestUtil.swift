//
//  RequestUtil.swift
//  QCListViewController
//
//  Created by yanqunchao on 2019/7/6.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import SwiftyJSON
let imgUrls = [ "http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg"
    ,"http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg","http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg","http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=3914596cf1deb48ffb69a7dfc01e3aef/d0c8a786c9177f3ea3e73f0072cf3bc79e3d56e8.jpg"  ,"http://c.hiphotos.baidu.com/image/w%3D310/sign=8cc67b8cc91349547e1eee65664e92dd/4610b912c8fcc3ce11e40a3e9045d688d43f2093.jpg","http://c.hiphotos.baidu.com/image/w%3D310/sign=93e1c429952bd40742c7d5fc4b889e9c/3812b31bb051f8191cdd594bd8b44aed2e73e733.jpg","http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg","http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=3914596cf1deb48ffb69a7dfc01e3aef/d0c8a786c9177f3ea3e73f0072cf3bc79e3d56e8.jpg","http://c.hiphotos.baidu.com/image/w%3D310/sign=93e1c429952bd40742c7d5fc4b889e9c/3812b31bb051f8191cdd594bd8b44aed2e73e733.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=d4507def9d3df8dca63d8990fd1072bf/d833c895d143ad4b758c35d880025aafa40f0603.jpg","http://c.hiphotos.baidu.com/image/w%3D310/sign=702acce2552c11dfded1b92253266255/d62a6059252dd42a3ac70aaa013b5bb5c8eab8e0.jpg", "http://h.hiphotos.baidu.com/image/w%3D310/sign=75ff59cd19d5ad6eaaf962ebb1ca39a3/b64543a98226cffcb9f3ddbbbb014a90f703eada.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=11386163f1deb48ffb69a7dfc01e3aef/d0c8a786c9177f3e8bcb070f72cf3bc79f3d5631.jpg","http://f.hiphotos.baidu.com/image/w%3D310/sign=8ed508bbd358ccbf1bbcb33b29d8bcd4/8694a4c27d1ed21b33ff8fecaf6eddc451da3f80.jpg","http://b.hiphotos.baidu.com/image/w%3D310/sign=ad40ca82c9ef76093c0b9f9e1edca301/5d6034a85edf8db16aa7b27b0b23dd54564e7420.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg","http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg","http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg","http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg"
]
typealias JSONClosure = (JSON)->()

typealias JSONArrayClosure = ([JSON])->()

public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}


class RequestUtil: NSObject {
    var dataArr:[JSON] = []
    
    static public let shared: NSObject = {
        return NSObject()
    }()
    
    func createModels(){
        for (i,url) in imgUrls.enumerated(){
            var obj = JSON()
            obj["img"].string = url
            obj["name"].string = "图片\(i)"
            obj["height"].double = 90
            dataArr.append(obj)
        }
    }
    //post请求
    public class func post(_ url:String,params:[String:Any],successHandler:@escaping JSONClosure,failHandler:@escaping (String)->()){
    
        var dataArr:[JSON] = []
        let page = params["pageNo"] as? Int ?? 0
        if url == APIConst.HOST_getStudentList{
            var count = 10
            if page == 4 {
                count = 4
            }
            for i in 0..<count{
                var json = JSON()
                json["name"].string = "学生\(i + (page - 1) * 10)"
                json["number"].int = 10000+i
                json["age"].int = 10+i
                dataArr.append(json)
            }
        }else if url == APIConst.HOST_getClassList{
            var count = 10
            if  page == 4 {
                count = 4
            }
            for i in 0..<count{
                var json = JSON()
                json["className"].string = "班级\(i + ( page - 1) * 10)"
                json["totalCount"].int = 30+i
                dataArr.append(json)
            }
        } else if url == APIConst.HOST_getFallList {
            var count = 20
            if page == 3 {
                count = 3
            }
            for i in 0..<count{
                var obj = JSON()
                obj["img"].string = imgUrls[i]
                obj["name"].string = "图片\(i + ( page - 1) * 20)"
                obj["height"].double = Double(CGFloat(arc4random_uniform(40)) + 200) 
                dataArr.append(obj)
            }
        }
        successHandler(JSON(dataArr))
    }
    
    //get请求
    public class func get(_ url:String,params:[String:Any],successHandler:@escaping JSONClosure,failHandler:@escaping (String)->()){
        
        successHandler(JSON())
    }
    
    
    //put请求
    public class func put(_ url:String,params:[String:Any],successHandler:@escaping JSONClosure,failHandler:@escaping (String)->()){
        
        successHandler(JSON())
    }
    
    
}
