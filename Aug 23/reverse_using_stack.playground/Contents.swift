import UIKit

class Stack{
    
    var arr:[Any] = []
    
    func push(_ val: Any){
        arr.append(val)
    }
    
    func pop() -> Any? {
        return arr.popLast()
    }
    
    func peek() -> Any? {
        guard let top = arr.last else { return nil}
        
        return top
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
}


var s = Stack()

var x = 12345

while x > 0 {
    s.push(x%10)
    x = x/10
    
}
var i = 1;
while !s.isEmpty() {
    
    var t = s.pop() as? Int
    x += t! * i
    i *= 10
    
}

print(x)


