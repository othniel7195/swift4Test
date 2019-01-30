import UIKit

var str = "Hello, playground"

func test(a:Int, b:Int, c:Int)->Void{
}

func test2(_ a:Int, _ b:Int, c:Int)->(){
    
}
func test3(a1 a:Int, b:Int, c1 c:Int){
    
}

test(a: 10, b: 10, c: 10)
test2(10, 20, c: 10)
test3(a1: 10, b: 10, c1: 10)


//默认参数
func test4(_ a:Int, b:Int = 5, c:Int = 10){
    print(a+b+c)
}
test4(1,c:5)

//可变参数
func test5(a: Int...){
    var i = 0
    for v in a {
        i += v
    }
    print(i)
}
test5(a: 1,2,3,4,5)

func test6(a:inout Int,  b:inout Int){
    let tmp = b
    b = a
    a = tmp
}
var a = 20
var b = 10
test6(a: &a, b: &b)
a
b


func test7(){
    func test8(){
        print("test8")
    }
    test8()
    print("test7")
}
test7()

func test9(a: Int, b: Int, method:(Int, Int)->Int)
{
    print(method(a,b));
}

func addtest(a: Int, b: Int)->Int{
    print("加法:a+b =\(a+b)")
    return a+b
}
func mutiltest(a: Int, b: Int)->Int{
    print("加法:a-b =\(a-b)")
    return a-b
}

test9(a: 10, b: 5, method: addtest)
test9(a: 10, b: 5, method: mutiltest)

func getMethod(a: String)-> (Int, Int) -> Int
{
    if a == "add" {
        return addtest
    }else{
        return mutiltest
    }
}

var method = getMethod(a: "add")
var t = method(5, 10)


//枚举类型不能用any
enum type1:String
{
    //枚举赋值rawValue 原始值 type1 必须有个原始类型
    case t1 = "abc"
    case t2 = "123"
    case t3 = "tyc"
}

type1.t1.rawValue
type1.t2.rawValue

let t5 = type1(rawValue: "123")!
let t6 = type1(rawValue: "123456")


switch (t5){
case .t1:
    print("t1")
case .t2:
    print("t2")
case .t3:
    print("t3")
    
default:
    print("tno")
    
}

let t7 = type1.t1
switch t7 {
case .t1:
    print("t1")
case .t2:
    print("t2")
case .t3:
    print("t3")
    
default:
    print("tno")
}
