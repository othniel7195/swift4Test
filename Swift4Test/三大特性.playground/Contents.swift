import UIKit

var str = "Hello, playground"


//封装
class Person {
    var name: String = "xiaoli"
    var age: Int = 10
    
    func run(){
        print("Person run")
    }
    
    //重载 方法名相同(参数名不同，类型不同，参数个数不同)
    func run(name: String) {
        self.name = name;
        print("\(name) run->Person")
    }
    
    func run(name: String, age: Int) {
        self.name = name;
        self.age = age;
        print("\(name) run->Person  age:\(age)")
    }
    
    func work() -> Void {
        print("person work")
    }
}


//继承

class BigPerson: Person {
    
    //重写
    override func run(name: String, age: Int) {
        self.name = name
        self.age = age;
        print("big man name:\(name) run  age:\(age)")
    }
    
    override func work() -> Void {
        print("big man work")
    }
}

class LittlePerson: Person {
    //重写
    override func run(name: String, age: Int) {
        self.name = name;
        self.age = age;
        print("little boy name:\(name) run  age:\(age)")
    }
    
    override func work() -> Void {
        print("little man work")
    }
}

//多态
func testRun(person: Person){
    person.work()
}

let person1 = Person()
person1.run(name: "zhang1", age: 100)
person1.run(name: "zhang2")

let bigP1 = BigPerson()
bigP1.run(name: "big zhang1", age: 40)
bigP1.run(name: "big zhang2")

let littleP1 = LittlePerson()
littleP1.run(name: "little zhang1", age: 12)

testRun(person: littleP1)
testRun(person: bigP1)
