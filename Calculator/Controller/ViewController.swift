//
//  ViewController.swift
//  Calculator
//
//  Created by Nitin Birdi.
//  Copyright © 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("cannot convert display label text to double")
            }
            return number
        }
        set {
            displayLabel.text! = String(newValue)
        }
    }
    
    private var calculationLogin = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        calculationLogin.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            
            guard let result = calculationLogin.Calculate(symbol: calcMethod) else {
                fatalError("the result of calcuation is nil")
            }
            displayValue = result
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                let isInt =  floor(displayValue) == displayValue
                if !isInt {
                    return
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}

