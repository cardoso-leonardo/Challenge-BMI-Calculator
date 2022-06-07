//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var height : Float = 0.0
    var weight : Float = 0.0
    var bmi : String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        bmi = String(format: "%.1f", weight / pow(height, 2))
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi
        }
    }
}

