//
//  注释.swift
//  Swift4Test
//
//  Created by zhao.feng on 2019/2/2.
//  Copyright © 2019年 zhao.feng. All rights reserved.
//

import Foundation

class Person: NSObject {
    
    //TODO:- test2
    func test2(num1: Int, s1: String) -> String{
        return "1231"
    }
    
    
    /// test3
    ///
    /// - Parameters:
    ///   - num1: <#num1 description#>
    ///   - s1: <#s1 description#>
    /// - Returns: <#return value description#>
    func test3(num1: Int, s1: String) -> String{
        return "1231"
    }

    //MARK:- test4
    func test4(num1: Int, s1: String) -> String{
        return "1231"
    }
    
    //FIXME:- bug
    func test5(num1: Int, s1: String) -> String{
        return "1231"
    }
}
