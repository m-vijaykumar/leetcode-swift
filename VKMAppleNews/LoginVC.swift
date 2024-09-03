//
//  LoginVC.swift
//  VKMAppleNews
//
//  Created by Vijay Kumar Munukoti on 8/29/24.
//

import Foundation
import UIKit
class LoginVC: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    
    
    @IBAction func checkUser(_ sender: Any) {
        guard let u =  usernameTF.text,  let p = passwordTF.text else{
            
            return
        }
        
        if u.isEmpty || p.isEmpty {
            
            let alertController = UIAlertController(title: "Hello", message: "Enter UserName and Pssword", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
        }else{
            let alertController = UIAlertController(title: "Hello", message: "Login Successfull", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                // Handle OK button tap
                self.performSegue(withIdentifier: "submitTab", sender:self)
            }

            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
}

