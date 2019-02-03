import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

print("async begin")

let gcd = DispatchQueue(label: "test")
gcd.asyncAfter(deadline: DispatchTime.now() + 2) {
    print("haha")
    //PlaygroundPage.current.finishExecution()

};

print("end ")


let frame = CGRect(x: 20, y: 20, width: 100, height: 100)
let view = UIView(frame: frame)
view.backgroundColor = UIColor.red

PlaygroundPage.current.liveView = view

UIView.animate(withDuration: 3, animations: {
    
    let frame1 = CGRect(x: 10, y: 10, width: 40, height: 40)
    view.frame = frame1
    view.backgroundColor = UIColor.orange
    
}) { (finish) in
    
    if finish {
        PlaygroundPage.current.finishExecution()
    }
}
