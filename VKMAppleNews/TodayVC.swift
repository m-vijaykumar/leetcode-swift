//
//  TodayVC.swift
//  VKMAppleNews
//
//  Created by Vijay Kumar Munukoti on 8/29/24.
//

import Foundation
import UIKit
class TodayVC: UIViewController {
    
    @IBOutlet weak var Val: UILabel!
    
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        Val.text = String(i)
    }
    

    @IBAction func IncreaseValue(_ sender: Any) {
        i += 1;
        Val.text = String(i)
        print("Increase Value :   \(i)")
    }
    
    @IBAction func DecreaseValue(_ sender: Any) {
        
        i -= 1;
        Val.text = String(i)
        print("Decrease Value :   \(i)")
    }
}


