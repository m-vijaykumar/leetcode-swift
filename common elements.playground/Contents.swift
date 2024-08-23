import UIKit

var greeting = "Hello, playground"


var k = ["swwdwe" , "weerew" , "q3ewwq"]

var dist = [Character : Int ]()

for c in k[0]{
    dist[c] = 1
}

for i in 1..<k.count{
    
    var chars = Set(k[i])
    
    for s in dist.keys{
        if chars.contains(s){
            dist[s]! += 1
        }
    }
}

for ( ch , cc) in dist{
    
    if cc == k.count{
        print(ch)
    }
}
