import UIKit

var str = "Hello, playground"

//struct 中要加类型
struct Point {
    var x:Double
    var y:Double
}

let p1 = Point(x: 10.0, y: 10.0)
let p2 = Point(x: 11.0, y: 12.0)
let p3 = Point(x: 12.0, y: 13.0)

func getDiscount(p1: Point, p2: Point) -> Double
{
    return sqrt(p1.x * p2.x + p1.y * p2.y)
}


let x = getDiscount(p1: p1, p2: p2)


struct Person {
    var name:String
    var age: Int?
}

//系统默认的是全部参数的逐一初始化的
var person1 = Person(name: "xiaowen", age: nil)
person1.name


struct Person1 {
    var name: String
    var age: Int?
    
    init() {
        name = "xiaowen"
    }
    //可选，非可选是不同的参数 可以重载
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    init(name: String, age:Int?) {
        self.name = name
        self.age = age
    }
}

var person11 = Person1()
person11.name

var person22 = Person1(name: "xiaoli", age: 12)
person22.name
person22.age

var person33 = Person1(name: "xiaoll", age: nil)
person33.name
person33.age


//struct 需要修改属性  需要mutating
struct PointW {
    var x:Int
    var y:Int
    
    mutating func moveX(){
        
        self.x += 10
        print("x 移动 10 :\(self.x)")
    }
    mutating func moveX(x:Int){
        self.x += x
        print("x 移动 \(x) :\(self.x)")
    }
}

var pw1 = PointW(x: 10, y: 1)
pw1.moveX()
pw1.moveX(x: 1)

extension PointW
{
    mutating func changeX(x: Int) -> Void {
        self.x = x
    }
}
var pw2 = PointW(x: 11, y: 2)
pw2.changeX(x: 21)

//没有默认逐一构造器
class Person2 {
    var name: String
    var age: Int
    init() {
        name = "XiaoLi"
        age = 10
    }
}

var person21 = Person2()

class Person3:NSObject {
    var name: String
    var age: Int
    override init() {
        self.name = "XL"
        self.age = 20
    }
}

var person31 = Person3()


extension Person3
{
    func changeName(name: String) {
        self.name = name;
    }
}

var person41 = Person3()
person41.changeName(name: "dg")
