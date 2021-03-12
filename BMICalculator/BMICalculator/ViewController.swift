//
//  ViewController.swift
//  BMICalculator
//
//  Created by yasuaki yoshida on 2021/03/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var WeightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightTextField.placeholder = "身長をcmで入力してください。"
        WeightTextField.placeholder = "体重をkgで入力してください。"
    }

    @IBAction func calcButtonAction(_ sender: Any) {
        let doubleH = Double(heightTextField.text!)
        let doubleW = Double(WeightTextField.text!)
        bmiLabel.text = calculation(height: doubleH!, weight: doubleW!)
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        
        return result.description
    }
    
}

