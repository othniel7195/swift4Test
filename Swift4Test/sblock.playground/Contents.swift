import UIKit

var block1:(Int)->() = {
    (a)->() in
    print(a)
}

block1(12)

var block2:(Int)->Void = {
    (a)->Void in
    print(a)
}

block2(13)

var block3:(Int)->() = {
    (a: Int) in
    print(a)
}

block3(14)

var block4:()->() = {
    print("block4")
}
block4()

var block5 = {
    print("block5")
}
block5()

var block6:(Int)->Int = {
    (a)->Int in
    print(a)
    return a + 10
}

let blk6 = block6(15)
print(blk6)


func testBlock1(num1: Int, num2: Int, block:(Int, Int)->Int) -> Int{
    
    return block(num1, num2)
    
}

var addBlock:(Int, Int)->Int = {
    (a, b) in
    
    return a + b
}

var mutilBlock:(Int, Int) -> Int = {
    (a, b) in
    return a-b
}

let t1 = testBlock1(num1: 10, num2: 5, block: addBlock)
let t2 = testBlock1(num1: 10, num2: 5, block: mutilBlock)

func testBlock2(num1: Int, block:(Int, Int) -> Int, num2: Int) -> Int{
    
    return block(num1, num2)
}

let t3 = testBlock2(num1: 11, block: { (a, b) -> Int in
    return a + b
}, num2: 5)


func testBlock3(num1: Int, num2: Int, block:(Int, Int) -> Int) -> Int {
    
    return block(num1, num2)
}

let t4 = testBlock3(num1: 6, num2: 12) { (a, b) -> Int in
    return a + b
}


func testBlock4(block:()->()){
    
    print("test blk4")
}
//testBlock4{
//    print("test block")
//}

testBlock4 {
    
}


//循环引用问题
class Person {
    
    var block:(()->())?
    
    //循环引用了
    func test() {
        
        block = {
            self
            print("person block")
        }
    }
    
    func test1() {
        //[weak self] 破解循环引用 不能省略 block  ()->()
        block = {
            [weak self]
            ()->() in
            self
            print("person block")
        }
    }
    
    func test2() {
        
        block = {
            [unowned self]  //unowned 类似 oc的unsafe_retain  释放后不会把指针设置成nil
            ()->() in
            self
            print("person block")
        }
    }
    
    func test3() {
        //weak 在var 前
        weak var weakSelf = self
        block = {
            weakSelf
            print("person block")
        }
    }
    
    
    func test4() {
        //unowned 在let 前
        /// Variable 'weakSelf' was never mutated; consider changing to 'let' constant
        //weak 用var 原因 是因为 被释放时值会改成nil 就是会改变（安全的 类似oc weak）
        //unowned 用let 原因  是被释放是不会改成nil  就是不会改变（不安全 类似oc的unsafe_retain）
        unowned let weakSelf = self
        block = {
            weakSelf
            print("person block")
        }
    }
    
    deinit {
        print("释放了")
    }
}
var pblk: Person? = Person()
pblk?.test4()

pblk = nil
