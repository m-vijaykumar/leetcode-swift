import UIKit

var greeting = "Hello, playground"

var arr =  ["1", "2", "3", "4", "5", "abc"]

for i in arr{
    
    if let a = Int(i) {
        if(a % 2 == 0){
            print( a )
        }
    }else{
        print("invalid input")
    }
    
    
    
    
}
