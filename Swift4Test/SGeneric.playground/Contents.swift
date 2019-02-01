import UIKit

//泛型

func generic<T,TT>(num1: T,num2:TT){

    print("sum = \(num1) + \(num2)")
}

//1.<T:Class或者Protocal>
//泛型约束（冒号后边跟class或者协议必须是遵循该协议或类)
func generic2<T:NSArray>(num1: T,num2:T){
    print("sum = \(num1) + \(num2)")
}

//2.通过where 约束  where 写在参数列表后面
//冒号后边跟class或者协议必须是遵循该协议或类
func generic3<T> (num1: T,num2:T) where T:NSArray{
    print("sum = \(num1) + \(num2)")
}

generic(num1: 1.0, num2: "2.0")
generic2(num1: [1.0, 2.0], num2: ["2.0","1"])
generic3(num1: [1.0, 2.0], num2: ["2.0","1"])

//结构体泛型
struct GenericStruct <T,TT> {
    var num1: T
    var num2: TT
    
    func test() {
        print("struct = \(num1) + \(num2)")
    }
}

let st = GenericStruct(num1: 1.0, num2: "2")
st.test()

//类泛型

class GenericClass <T, TT> {
    var num1:T
    var num2:TT
    init(num1:T, num2:TT) {
        self.num1 = num1
        self.num2 = num2
    }
    func test() {
        print("class = \(self.num1) + \(self.num2)")
    }
}

let cc = GenericClass(num1: 1.0, num2: "2")
cc.test()


//协议泛型
protocol GenericProtocal
{
    associatedtype T
    associatedtype U
    func test(num1:T, num2:T) -> U;
}

class TestGenericProtocal1: GenericProtocal{

    typealias T = Int
    typealias U = String
    func test(num1: T, num2: T) -> U{
        return "protocal = \(num1) + \(num2)"
    }
}

let gp1 = TestGenericProtocal1()
let a = gp1.test(num1: 1, num2: 2)


