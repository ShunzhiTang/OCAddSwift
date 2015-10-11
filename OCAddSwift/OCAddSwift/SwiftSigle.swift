//
//  SwiftSigle.swift
//  单例的实现
//
//  Created by Tsz on 15/10/10.
//  Copyright © 2015年 Tsz. All rights reserved.
//

import UIKit

class SwiftSigle: NSObject {

   
    private static var instance: SwiftSigle?
    //基础数据类型 一般都要去赋值 ，onceToken第一次返回是0 ，后面创建返回是  -1
    private static var onceToken:dispatch_once_t = 0
    
     //单例是一个类方法
    class func sharedSound()->SwiftSigle {
        dispatch_once(&onceToken) { () -> Void in
            instance = SwiftSigle()
        }
        return instance!
    }
    
    func sayHello(){
        print("-------")
    }
}
