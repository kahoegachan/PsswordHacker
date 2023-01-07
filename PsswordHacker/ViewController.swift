//
//  ViewController.swift
//  PsswordHacker
//
//  Created by gueststd on 2023/01/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultlade11: UILabel!
    @IBOutlet var resultlade12: UILabel!
    @IBOutlet var resultlade13: UILabel!
    @IBOutlet var resultlade14: UILabel!
    
    
    
    @IBOutlet var countLabel: UILabel!
    
   
    var password:Int = 0411
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start() {
        for i in 0...9999 {
            countLabel.text = String(i)
            RunLoop.main.run(until:Date(timeIntervalSinceNow: 0.0005))
                             
                        
                             if i == password {
                print("正解は(i)です！")
                
                var digits = [Int]()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultlade11.text = String(digits[0])
                resultlade12.text = String(digits[1])
                resultlade13.text = String(digits[2])
                resultlade14.text = String(digits[3])
            }
            
        }
    }
    
    @IBAction func reset() {
                
                
                password = 0411
                
                
                countLabel.text = "「START」ボタンを押して解析開始"
                
                
                
                resultlade11.text = "0"
                resultlade12.text = "0"
                resultlade13.text = "0"
                resultlade14.text = "0"
        
    }
    
    
}
