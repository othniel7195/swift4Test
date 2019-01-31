import UIKit

var str = "Hello, playground"


class Person {
    var name: String
    var age: Int
    
    init(dic:[String:Any]){
        
        self.name = (dic["name"] as? String) ?? ""
        self.age = (dic["age"] as? Int) ?? 0
    }
}

var p1 = Person(dic: ["name":"xiaoli","age":12])

p1.name


class Person1 : NSObject{
    //要加@bjc 才能用kvc
    //objc 没有可选型  所以要用kvc 必须是非可选型
    @objc var name: String = ""
    @objc var age: Int = 0
    init(dic:[String: Any]) {
        //1.因为还没初始化成功  ，要先初始化成功
        //2.要保证非可选必须有值 super.init 没办法保证
        super.init()
        self.setValuesForKeys(dic)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        //外部调用 用forUndefinedKey
        //内部key
        print("key:\(key)")
    }
}

let dic:[String: Any] = ["name":"xiaoli","age":12]

var p2 = Person1(dic:dic)
p2.age


@objcMembers class Person3: NSObject{
    var name: String = ""
    var age: Int = 0
    
    init(dic:[String: Any]) {
        super.init()
        self.setValuesForKeys(dic)
    }
}

var p3 = Person3(dic: ["name": "LiLi", "age": 12])
p3.name


class Person4
{
    var name: String?

    deinit {
        print("释放Person4")
    }
}

//p44 要是可选类型才能设置nil
var p44: Person4? = Person4()

p44 = nil


