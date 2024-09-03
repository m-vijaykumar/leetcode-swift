//
//  AudioVC.swift
//  VKMAppleNews
//
//  Created by Vijay Kumar Munukoti on 8/30/24.
//

import UIKit
 
class AudioVC: UIViewController {
    
    var dot: Bool = false;
    var previous_value: Double = 0;
    var display_value: Double = 0;
    var operationButton: UIButton?
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var displayLable: UILabel!
    
    @IBAction func Numberbutton(_ sender: UIButton) {
        if let val = sender.titleLabel?.text{
            
            print(val)
            if val == "." {
                print("in .")
                if !dot {
                    displayLable.text! += String(val)
                    dot = true
                }
            }else if displayLable.text == "0" {
                displayLable.text = String(val)
            }
            else{
                displayLable.text! += String(val)
            }
            
        }
    }
    
    @IBAction func OperationButtton(_ sender: UIButton) {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .decimal
        
        if let op = sender.titleLabel?.text{
            
            print(op)
            
            if op == "=" {
                
                if let operation = operationButton{
                    
                    switch operation.titleLabel?.text {
                    case "+":
                        display_value = Double(displayLable.text!)!
                        let r = NSDecimalNumber(value: (previous_value + display_value ))
                        displayLable.text! = r.stringValue
                        previous_value = previous_value + display_value
                        display_value = 0;
                        dot = false
                        
                    case "-":
                        display_value = Double(displayLable.text!)!
                        let r = NSDecimalNumber(value: (previous_value - display_value ))
                        displayLable.text! = r.stringValue
                        previous_value = previous_value + display_value
                        display_value = 0;
                        dot = false
                    case "*":
                        display_value = Double(displayLable.text!)!
                        let r = NSDecimalNumber(value: (previous_value * display_value ))
                        displayLable.text! = r.stringValue
                        previous_value = previous_value + display_value
                        display_value = 0;
                        dot = false
                        
                    case "/":
                        display_value = Double(displayLable.text!)!
                        let r = NSDecimalNumber(value: (previous_value / display_value ))
                        displayLable.text! = r.stringValue
                        previous_value = previous_value + display_value
                        display_value = 0;
                        dot = false
//                        operationButton?.isEnabled = true
                    default:
                        print("invalid Operator")
                    }
                }
               
            }else{
                previous_value = Double(displayLable.text!)!
                displayLable.text = "0"
                operationButton = sender
                dot = false
//                sender.isEnabled = false
            }
        }
        
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        displayLable.text = "0"
        display_value = 0
        previous_value = 0
        dot = false
    }
}
