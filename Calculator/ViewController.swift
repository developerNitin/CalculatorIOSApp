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
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayValue *= -1
            } else if calcMethod == "AC" {
                displayValue = 0
            } else if calcMethod == "%" {
                displayValue /= 100
            }
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

