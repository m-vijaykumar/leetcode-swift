import UIKit

var greeting = "Hello, playground"

func largest_number(_ arr: [Int] ) -> Int{
    
    var l1 = 0
    var l2 = 0
    for i in arr {
        if l1 < i {
            l2 = l1
            l1 = i
        }else if( l2 < i){
            l2 = i
        }
    }
    
    return l2
}

var arr = [1,2,3,4,5,6,7,8]

print(largest_number(arr))
