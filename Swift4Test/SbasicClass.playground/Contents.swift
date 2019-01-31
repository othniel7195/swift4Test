import UIKit

var str = "Hello, playground"

class Person {
    var name: String?
    //init 的初始方法只能在class 中
    // deinit 析构函数只能在class
    //属性只能在class 中
    deinit {
        print("person 释放")
    }
}

//初始化
extension Person {
    //便利构造器可以在extension中
    convenience init(name: String) {
        self.init()
        self.name = name;
    }
    
}


//改变名字
extension Person {
    
    func changeName(name: String) -> Void {
        self.name  = name
    }
}

var p: Person? = Person(name: "xiaoli")

p?.changeName(name: "xiaowen")

p = nil


class Person888{
    
    //存储属性
    var name: String = ""
    var age: Int?
    let score1: Double = 60.0
    let score2: Double = 100.0
    
    //只有get 的只读属性 ，并且get是计算得到的 计算属性
    var avg: Double{
        get{
            return (score1 + score2) * 0.5
        }
    }
    
    //计算属性 第二中写法
    var avg2: Double{
        return (score1 + score2) * 0.5
    }
    
    //类属性
    static var personCount: Int = 0
    
    init(name: String) {
        self.name = name
        Person888.personCount += 1
    }
    deinit {
        Person888.personCount -= 1
    }
    
    private var avg4: Double?
    var avg3: Double? {
        get{
            return avg4
        }
        set{
            print("newValue:\(newValue))")
            avg4 = newValue
        }
    }
}


var p888 = Person888(name: "xiaoli")

//p888.avg = 100 'avg' is a get-only property
p888.avg

//p888.avg2 = 100 //'avg2' is a get-only property
p888.avg2

p888.avg3 = 100.0
p888.avg3
