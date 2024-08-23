import UIKit

var greeting = "Hello, playground"

var arr = [2,4,5,6,7,12,14,16,17,34,45,67,98,65,34,23,45,16]

var r = [Int]()

var q = false
for num in arr{
    if !r.contains(num){
        
        for i in 0..<r.count{
            
            if( r[i] > num){
                r.insert(num, at: i)
                q = true
                break;
            }
        }
        if !q {
            r.append(num)
            q = false
        }
    }
    
}
print(arr)
print(r)
