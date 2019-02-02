import UIKit


enum FileError:Error{
    case NoPath
    case ContentNotAviable
    case NoContent
}


//抛异常加参数列表后 返回值钱加 throws
func readFile(fileP: String) throws -> String {
    
    //1.路径不存在
    let manager = FileManager.default
    if !manager.fileExists(atPath: fileP) {
        print("路径不存在")
        throw FileError.NoPath
    }
    
    //2.内容获取失败
    let url = URL(fileURLWithPath: fileP)
    var content: String
    do {
        content = try String(contentsOf: url)
    } catch {
        print("内容获取失败")
     
        throw FileError.ContentNotAviable
    }
    //3.内容为空
    if content.count <= 1 {
        print("内容为空")
        throw FileError.NoContent
    }
    
    print("内容获取成功 :\(content.count)")
    return content
}


func testReadFile() {
    
    guard let url = Bundle.main.path(forResource: "test", ofType: "txt") else {
        print("url 有问题")
        return
    }
    
    //try? 交个处理器处理异常 有异常 就变成可选类型 nil
    var content1 = try? readFile(fileP: url) //nil
    //try! 知道肯定没有异常  ，有的话就会崩溃
    //var content = try! readFile(fileP: url)
    
    var content: String?
    do {
        content = try readFile(fileP: url)
    } catch {
        
        switch error {
        case FileError.NoPath:
            print("FileError.NoPath")
        case FileError.NoContent:
            print("FileError.NoContent")
        case FileError.ContentNotAviable:
            print("FileError.ContentNotAviable")
            
        default:
            print("我也不知道:\(error)")
        }
    }
    
    print("content:\(content)")
}


testReadFile()



//异常传递
enum NumError:Error{
    case NumberError
}
func test1() throws -> Int{
    
    throw NumError.NumberError
    return 1
}

func test2() throws -> Int {
    
   return try test1()
}

func test3(){
    
    do {
        try test2()
    } catch  {
        print("error\(error)")
    }
}

test3()
