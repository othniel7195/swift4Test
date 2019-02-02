import UIKit


class Dog {
    var name: String = "xiaogou"
    var age: Int = 12
}

class Person {
    lazy var name: String = "12345"
    lazy var dog: Dog = Dog()
    
}

let p = Person()
p.name
p.dog

class Person1 {
    lazy var dog: Dog = Person1.getDog()
    
    static func getDog() -> Dog {
        let d = Dog()
        d.age = 15
        return d
    }
}
let p1 = Person1()
p1.dog

var blk:()->String = {
    
    return "123"
}
blk()

var blk1:String = blk()
var blk2:String = {
    () -> String
    in
    return "1,2,3"
}()
var blk3:String = {
    return "3,4,5"
}()

class Person2 {
    lazy var dog: Dog = {
        
        let d = Dog()
        d.age = 18
        return d
    }()
    
   
}

let p2 = Person2()
p2.dog


//注释 command + alt（option） + / 文档注释



/// test1
///
/// - Parameters:
///   - num1: 哈哈
///   - s1: yes
/// - Returns: string
func test(num1: Int, s1: String) -> String{
    return "1231"
}

//加描述
///ttttest1
func test1(num1: Int, s1: String) -> String{
    return "1231"
}

//简单注释 不进入文档
func test2(num1: Int, s1: String) -> String{
    return "1231"
}

