//
//  calculatorLogic.swift
//  Calculator
//
//  Created by Nitin Birdi on 11/05/20.
//  Copyright © 2020. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func Calculate(_ symbol: String) -> Double? {
        
        if let n = number {
            
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                return performTwoNumberCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "÷":
                return n1 / n2
            case "×":
                return n1 * n2
            default:
                fatalError("operation passed in doesn't match any of the case")
            }
        }
        return nil
    }
}
