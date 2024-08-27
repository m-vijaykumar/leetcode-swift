import UIKit

struct StructDeveloper {
    
    var name: String?
    var Role: String?
    
   mutating func editName(nn: String?){
        
       if let l = nn {
           name = l
       }
       
       print(name)
       
    }
}
 
class ClassDeveloper {
    
    var name: String?
    var jonTitle: String?
    var Salary: Int?

    
    init(_ name: String? = nil, _ jonTitle: String? = nil, _ Salary: Int? = nil) {
        self.name = name
        self.jonTitle = jonTitle
        self.Salary = Salary
        
        
    }
    
    func printVal() -> String {
        
        if let n = name {
            return n
        }else {
            return "nil"
        }
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
      
}

let v = ClassDeveloper("ds", "ewdwe", 1213);

print(v.printVal())
print(v.Salary)

var sv = StructDeveloper()

sv.editName(nn: "vijay")

sv.Role = "jr. developer"
print(sv.Role)
