import UIKit

protocol work {
    func doBussiness()
}

protocol business: work
{
    func doMoney()
}


class Person {
    var name: String = ""
    var age: Int = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class WorkPerson: Person, business {
    
    func doBussiness() {
        print("\(self.name) doBussiness")
    }
    func doMoney() {
        print("\(self.name) for \(age) doMoney")
    }
}


let workP = WorkPerson(name: "xiaowen", age: 18)
workP.doBussiness()
workP.doMoney()




//protocol Printer: class {
//    func printer()
//}

protocol Printer: NSObjectProtocol{
    func printer()
}

/////////////////////////////////////////////////
//可选协议
@objc
protocol Printer2: NSObjectProtocol{
    @objc optional func printer2()
}

////////////////////////////////////////////////


//继承要在协议之前
class BlackPrinter: NSObject, Printer, Printer2 {
    
    func printer() {
        print("黑白打印机 打印")
    }
}

class ColorPrint: NSObject,Printer , Printer2 {
    func printer() {
        print("彩色打印机 打印")
    }
    func printer2() {
        print("特殊打印彩色的东西")
    }
}

class  NewWorkPerson {
    //添加weak的delegate  协议要加class 或者NSObjectProtocol(z用这个协议的 都要z继承NSObject)
    weak var delegate: Printer?
    weak var delegate2: Printer2?
    
    func doPrint() {
        delegate?.printer()
    }
    func doPrint2() {
        //printer2 是可选的 所有要确定是？ 还是！（意思就是要告知怎么解包）
        delegate2?.printer2?()
    }
}


let blackP = BlackPrinter()
let colorP = ColorPrint()
let newp = NewWorkPerson()
newp.delegate = blackP
newp.doPrint()

newp.delegate2 = colorP
newp.doPrint2()

