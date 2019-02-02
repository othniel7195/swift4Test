//
//  权限TEST.swift
//  Swift4Test
//
//  Created by zhao.feng on 2019/2/2.
//  Copyright © 2019年 zhao.feng. All rights reserved.
//

import Foundation
import TestLib

class TESTQX: NSObject {
    
    func testqx() -> Void {
        
        let tp = Person11()
        tp.a = 10
        tp.d = 10
        
        let tp2 = Person22()
        tp2.getPerson()
    }
}

class Person333: Person33 {
    
    override func getPerson() {
        print("Person333")
    }
}
