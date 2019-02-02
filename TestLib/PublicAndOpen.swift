//
//  PublicAndOpen.swift
//  TestLib
//
//  Created by zhao.feng on 2019/2/2.
//  Copyright © 2019年 zhao.feng. All rights reserved.
//

import Foundation

//public 只能使用 不能修改
public class Person22: NSObject {
    
    public var a: Int = 0
    
    public func getPerson()  {
        
        print("get person")
    }
}


open class Person33: NSObject {
    
    public var a: Int = 0
    
    open func getPerson()  {
        
        print("get person 33")
    }
}
