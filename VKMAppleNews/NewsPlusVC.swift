//
//  NewsPlusVC.swift
//  VKMAppleNews
//
//  Created by Vijay Kumar Munukoti on 8/29/24.
//

import Foundation

import UIKit

class NewsPlusVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
        return rainbow.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
                    cell.backgroundColor = rainbow[indexPath.item]
                    
                   
                    var content = cell.defaultContentConfiguration()
                    content.text = rainbow[indexPath.item].accessibilityName.capitalized
                    
                    cell.contentConfiguration = content
                    return cell
        }
    
        
    
    
}
