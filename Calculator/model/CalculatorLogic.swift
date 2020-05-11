//
//  calculatorLogic.swift
//  Calculator
//
//  Created by Nitin Birdi on 11/05/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func Calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        } else {
            return nil
        }
    }
}
