import UIKit

var greeting = "Hello, playground"

var arr : [Int] = [23,56,7,77,84,92,36,12,34,43]

var d:Double

//d = Double("3.645")!
d = Double(".0")!
//d += 3

print(d)

var l1 = 0
var l2 = 0
var l3 = 0

for val in arr{
    
    if val > l1 {
        
        l3 = l2
        l2 = l1
        l1 = val
    }else if val > l2 {
        l3 = l2
        l2 = val
    }else if val > l3 {
        l3 = val
    }
}

print(" l1 = \(l1), l2 = \(l2), l3 = \(l3) " )
var x:Double = 12.0

if( x % 1 == 0 ){
    
}



