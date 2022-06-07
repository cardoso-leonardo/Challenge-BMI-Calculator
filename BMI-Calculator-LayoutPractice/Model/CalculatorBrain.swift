//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Leonardo Cardoso on 07/06/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi : BMI?
    
    mutating func calculateBMI(h height: Float, w weight : Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue{
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat some more snacks", color: UIColor.blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Very good!", color: UIColor.green)
        case 25...:
            bmi = BMI(value: bmiValue, advice: "You should eat healthier", color: UIColor.red)
        default:
            print("Error")
        }
    }
    
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice found"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
