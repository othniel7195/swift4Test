import UIKit

var str = "Hello, playground"

var st1 = "😁"

//str + st1
//
//var b = 10
//st1 + "\(b)"
//
//"\(str)\(b)"
//
//var st2 = "赵锋"
//st2.lengthOfBytes(using: String.Encoding.utf8) //6
//st2.count //2
//str.lengthOfBytes(using: String.Encoding.utf8) //17
//str.count //17

//for c in st2 {
//    print(c)
//}
//
//let time = 1234
//String(format: "%zd:%zd", 1234/60, 1234%60)


////截取不会改变原字符串
//
//let startIndex = str.startIndex
//let afterIndex = str.index(after: startIndex)
//let midIndex = str.index(startIndex, offsetBy: 5)
//let endIndex = str.endIndex
//str[midIndex..<endIndex]
//str
//str[startIndex...midIndex]
//
////替换会改变原字符串
//str.replaceSubrange(startIndex...midIndex, with: "123456789")
//str

let a1:Array<Int> = [1,2]
var a2:[Int] = [2,3]

//增
a2.append(4)
a2.insert(1, at: 1)

//删
a2.remove(at: 0)
a2
//删除最后两个
a2.removeLast(2)
a2
a2 = [1,2,3,4,5,6]
//删除前面两个
a2.removeFirst(2)

a2.removeLast()
a2.removeFirst()

a2 = [1,2,3,4,5,6]

a2.removeSubrange(1...3)

a2.popLast()
a2

//改
a2[0] = 99

//查
a2[1]
a2[0...1]
a2.max()
a2.min()

//用 Any 支持不同类型
var a3:[Any] = [1, "2"]
//个数
a3.count //2
a3.capacity //2
a3.append(3)
a3.count //3
//每次扩容是上一次的2倍
a3.capacity //4

//遍历
//遍历索引
for idx in 0..<a3.count {
    print(a3[idx])
}
//遍历值
for value in a3 {
    print(value)
}

//遍历索引和值
for (idx,val) in a3.enumerated() {
    print("\(idx) = \(val)")
}

//合并
var a4:[Any] = [1,2]
var a5:[Int] = [3,4]
a3 + a4 //相加数组类型要一致

var s = "1232113"
//swift 类型转 OC类型 并调用OC方法
(s as NSString).replacingCharacters(in: NSMakeRange(0, 3), with: "wwww")

//var a6:[AnyObject] = [1,2] 必须是Object


var dic1:[AnyHashable:Any] = [1:1,2:4,"4":"8"]
dic1["1"] = 555
dic1[1] = 10

dic1.removeValue(forKey: "1")
dic1
//这个必须是不可选类型
let index1 = dic1.index(dic1.startIndex, offsetBy: 1)
let idx1 = dic1.index(forKey: "4")!
dic1.remove(at: idx1)
dic1


let tupe1 = (a:1,b:2)
print(tupe1.a)
print(tupe1.1)
let (a,b) = (c:1,d:2)
print(a)


//能赋值nil的是可选类型
var ss1 = "aaaa"
//ss1 = nil

//可选类型
var ss2:String? = "adasd"
ss2 = nil

var ss3:Optional<String> = "asda"
ss3 = nil

var ss4:String? = "qqq"
//有值 true 并且 解绑 赋值   nil false
if let result = ss4 {
    print("result:\(result)")
}


//类型转换
let  v = "QWERTY"
let result2 = v as String

let result3 = v as? Int


//空合类型
var v2:String? = nil
let result4 = v2 ?? "zz"
