import UIKit

//enum language: Int {
//    case swift
//    case cpp
//    case objectivec
//    
//    func showMyLanguagePow(laInit: Int) -> Int{
//        
//        switch self {
//        case .swift:
//            return laInit + 10
//        case .cpp:
//            return laInit + 20
//        case .objectivec:
//            return laInit + 30
//        }
//    }
//    
//    mutating func changeLanguage(){
//        switch self {
//        case .swift:
//            self = .cpp
//        case .cpp:
//            self = .objectivec
//        case .objectivec:
//            self = .swift
//        }
//    }
//}
//
//var ls = language.swift
//
//print(ls)
//
//ls.showMyLanguagePow(laInit: 10)
//
//ls = .objectivec
//ls.showMyLanguagePow(laInit: 10)
//
//ls.changeLanguage()
//
//
////关联值
//enum tuxing {
//    case Point
//    case 正方形(边: Int)
//    case 长方形(长: Int, 宽: Int)
//    
//    func area() -> Int {
//        switch self {
//        case let .Point:
//            return 0
//        case let .正方形(边: s):
//            return s * s
//        case let .长方形(长: w, 宽: h):
//            return w * h
//        }
//    }
//}
//
//
//let zfx = tuxing.正方形(边: 10)
//zfx.area()
//
//
////递归枚举  需要递归的枚举值 前加 indirect  或者 整个枚举加undirect （让编译器用指针指向枚举数据）
//
//indirect enum FamilyTree {
//    case noKnown
//    case onKnow(ace:FamilyTree)
//    case twoKnow(father:FamilyTree, mother: FamilyTree)
//}
//
//enum FamilyTree1 {
//    case noKnown
//    indirect case onKnow(ace:FamilyTree)
//    indirect case twoKnow(father:FamilyTree, mother: FamilyTree)
//}

class Atest {
    
    func atest() -> Void {
        print("atest")
    }
    
    class func actest(){
    
        print("aclass test")
    }
    
    static func ac2test(){
        print("ac2test test")
    }
}

class Btest: Atest {
    
    final override func atest() {
        print("btest - atest")
    }
    
    override class func actest(){
        print("btest")
    }
    
    //cannot override static method
//    override static func ac2test(){
//        print("bc2test test")
//    }
}

class Ctest: Btest {
//    override func atest(){
//        print("ctest")
//    }
}


let atest = Atest()
Atest.actest()
Atest.ac2test()

let btest = Btest()
Btest.actest()
Btest.ac2test()

let ctest = Ctest()
ctest.atest()


//struct satest{
//
//    enum eatest {
//        case swift
//        case cpp
//    }
//
//    var x: eatest = eatest.swift
//}
//
//let sat = satest()
//
//
//class NetworkClient: NSObject {
//
//    static let client: NetworkClient = NetworkClient()
//
//    deinit {
//        print("net work client")
//    }
//}
//
//let anc = NetworkClient.client
//
//
//let bnc = NetworkClient.client


struct PointRef {
    var x: Int
    var y: Int
}

class PointValue {
    var x: Int
    var y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let p1 = PointRef(x: 10, y: 10)
let p2 = PointValue(x: 10, y: 10)

var p3 = p1
var p4 = p2

print(p2 === p4)

let skills: [String?] = ["swift",nil,"php",nil,"cpp"]

for case let skill? in skills {
    print(skill)
}

enum Power {
    case full, outOfPower
    case normal(value: Double)
}

var battery = Power.normal(value: 0.2)
//battery = .outOfPower

switch battery {
case .full, .outOfPower :
    print("full")
case .normal(let percenter) where percenter < 0.3:
    print("low")
default:
    print("normal")
    
}

func ~= <T>(value: T, pattern: ClosedRange<T>) -> Bool {
    
    return pattern.contains(value)
}

if case .normal(let percenter) = battery, case percenter = 0...0.3{
    print("nn low")
}
