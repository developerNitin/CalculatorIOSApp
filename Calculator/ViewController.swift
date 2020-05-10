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
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text!) else {
            fatalError("cannot convert display label text to double")
        }
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = String(number/100)
            }
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                guard let currentDisplayNumber = Double(displayLabel.text!) else {
                    fatalError("cannot convert display label text to double")
                }
                
                let isInt =  floor(currentDisplayNumber) == currentDisplayNumber
                
                if !isInt {
                    return
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}

