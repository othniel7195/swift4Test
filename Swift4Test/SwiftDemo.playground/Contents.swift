import UIKit

//var str = "Hello, playground"
//let a:Int = 4
//var b:Int = 8
//let 哈哈 = 6
//let 😆 = 8
//哈哈 + 😆
//let c = 2.2
//a + Int(c)
//let d = 5
//var d1 = d
//d1 = 10
//
//let view = UIView(frame: CGRect(x: 10, y: 10, width: 10, height: 10))
//var view2 = view
//view2 = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 10))
//print(view2)
//print(view)
//
//var bool:Bool = true

//编译器 编译截断报错
//var i2:Int8 = Int8.max + 1

//运行期才会报错
//var i3:Int8 = Int8.max
//var i4:Int8 = 1
//let i5 = i3 + i4
//print(i5)

var a1 = 3
//++ -- 没有了
//a1 ++

//++ --的替代
a1 += 1
a1 -= 1

var b1:Double = 1.1
var b2 = 1.3
//浮点数不支持 % 只有整数支持
//b2 % b1

//if else 条件 不需要加（）
if b2 > 2 {
    
}else{
    
}

//guard 必须写在函数内部
//gurad 添加满足 就继续执行函数，条件不满足执行else
//类似于 if else 中先把不满足的执行 减少执行的指令
func testGuard(b3: Double){
    guard b3 > 2.0 else {
        print("b2 比 2 小");
        return;
    }
}

testGuard(b3: 1.3)

let d1 = 2.0

//1. switch 的类型要和 case的类型一致
//2.case 后面可以跟多个条件
//3. case 默认没有穿透 要加fallthrough
//4.必须要加default，且加在case最后一个条件后面
//5. switch 可以加各种类型 只要保证case 后的类型一致

switch d1 {
case 1.1, 10:
    print(1.1)
case 2.0:
    print(2)
    fallthrough
case 3.0:
    print(3)
default:
    print("no found")
}


let d2 = 55
switch d2 {
case 0..<59:
    print("不及格")
    print("需要多做练习")
case 60...80:
    print("良好")
case 80...100:
    print("不错")
default:
    print("成绩有问题")
    
}

let point = (10,3)
switch point {
case (_,0):
    print("y为0")
case (0...10,1):
    print("x在0-10之间")
case (let x, 2):
    print("x=\(x)")
case let(x, y) where x > y:
    print("x:\(x) > y:\(y)")
default:
    print("数据有问题")
}

for i in 0..<5 {
    print("idx:\(i)")
}

//闭区间
var qujian = 0...10
//0包含  10 不包含
//不能把半开半闭区间赋值给 闭区间  也不能把闭区间赋值给半闭半开区间
var qujian2 = 0..<10
//小数也支持 只是不能循环
var qujian3 = 1.1...9.8
//for i2 in qujian3 {
//    print("idx:\(i2)")
//}

var q1 = 10
while q1 > 0 {
    q1 -= 1
    print("while q1 > 0 \(q1)")
}
q1 = 10
repeat {
    q1 -= 1
    print("repeat while q1 > 0 \(q1)")
}while q1 > 0


let code = 200
switch code {
case 10, 50:
    print("<50")
case let unkownCode where unkownCode < 200:
    
    print("unkownCode:\(unkownCode)")
default:
    print("default")
}


if case 10...300 = code {
    print(code)
}
