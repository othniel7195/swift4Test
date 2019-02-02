//
//  权限1.swift
//  Swift4Test
//
//  Created by zhao.feng on 2019/2/2.
//  Copyright © 2019年 zhao.feng. All rights reserved.
//

import Foundation

class Person11: NSObject {
    //模块内部可以访问
    internal var a: Int = 0
    //本类可以方法
    private var b: Int = 0
    //当前文件权限1内可以访问
    fileprivate var c: Int = 0
    var d: Int = 0
}


class TestFilePrivate: NSObject {
    func testFilePrivate() -> Void {
        let t = Person11()
        t.c = 10
    }
}
