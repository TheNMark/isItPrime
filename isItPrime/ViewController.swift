//
//  ViewController.swift
//  isItPrime
//
//  Created by Mark on 20/10/2018.
//  Copyright © 2018 NMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel.text = ""
        
    }

    @IBAction func checkButton(_ sender: Any) {
        
        if let userEnteredString = textField.text {
            
            let userEnteredInt = Int(userEnteredString)
            
            if let num = userEnteredInt {
                
                var isPrime = true
                
                var i = 2
                
                if num == 1 {
                    
                    isPrime = false
                    
                }
                
                while  i < num {
                    
                    if num % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    resultLabel.text = "Your number is a prime."
                    
                } else {
                    
                    resultLabel.text = "Your number isn't a prime."
                    
                }
                
            } else {
                
                resultLabel.text = "Please enter a positive whole number."
                
            }
            
        }
        
        
        
    }
    

}

