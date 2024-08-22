import UIKit

var greeting = "Hello, playground"


var l1: [Int] = [1 ,2, 4, 5, 7, 9]

var l2 : [Int] = [2,3, 5, 8, 9, 12]

var l3 : [Int] = []

var i=0
var j=0

while i < l1.count && j < l2.count{
    if l1[i] < l2[j]{
        if l3.isEmpty || l3.last! != l1[i]{
            l3.append(l1[i])
        }
        i += 1
        
    }else if l1[i] > l2[j] {
            if l3.isEmpty || l3.last! != l2[j]{
                l3.append(l2[j])
            }
            j += 1
        }
        else {
            if l3.isEmpty || l3.last! != l1[i]{
                l3.append(l1[i])
            }
            i += 1
            j += 1
        }
     
    }

while i < l1.count {
    if l3.isEmpty || l3.last! != l1[i]{
        l3.append(l1[i])
    }
    i += 1

}

while j < l2.count {
    if l3.isEmpty || l3.last! != l2[j]{
        l3.append(l2[j])
    }
    j += 1
}

print(l3)
