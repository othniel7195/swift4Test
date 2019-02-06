import UIKit

enum language: Int {
    case swift
    case cpp
    case objectivec
    
    func showMyLanguagePow(laInit: Int) -> Int{
        
        switch self {
        case .swift:
            return laInit + 10
        case .cpp:
            return laInit + 20
        case .objectivec:
            return laInit + 30
        }
    }
    
    mutating func changeLanguage(){
        switch self {
        case .swift:
            self = .cpp
        case .cpp:
            self = .objectivec
        case .objectivec:
            self = .swift
        }
    }
}

var ls = language.swift

print(ls)

ls.showMyLanguagePow(laInit: 10)

ls = .objectivec
ls.showMyLanguagePow(laInit: 10)

ls.changeLanguage()


//关联值
enum tuxing {
    case Point
    case 正方形(边: Int)
    case 长方形(长: Int, 宽: Int)
    
    func area() -> Int {
        switch self {
        case let .Point:
            return 0
        case let .正方形(边: s):
            return s * s
        case let .长方形(长: w, 宽: h):
            return w * h
        }
    }
}


let zfx = tuxing.正方形(边: 10)
zfx.area()


//递归枚举  需要递归的枚举值 前加 indirect  或者 整个枚举加undirect （让编译器用指针指向枚举数据）

indirect enum FamilyTree {
    case noKnown
    case onKnow(ace:FamilyTree)
    case twoKnow(father:FamilyTree, mother: FamilyTree)
}

enum FamilyTree1 {
    case noKnown
    indirect case onKnow(ace:FamilyTree)
    indirect case twoKnow(father:FamilyTree, mother: FamilyTree)
}
