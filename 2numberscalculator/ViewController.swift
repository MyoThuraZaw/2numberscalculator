//
//  ViewController.swift
//  2numberscalculator
//
//  Created by Myo Thura Zaw on 6/29/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var mulBtn: UIButton!
    @IBOutlet weak var divBtn: UIButton!
    
    var result:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plusBtn.layer.cornerRadius = 10
        minusBtn.layer.cornerRadius = 10
        mulBtn.layer.cornerRadius = 10
        divBtn.layer.cornerRadius = 10
    }

    @IBAction func addNumbers(_ sender: UIButton) {
        if let n1 = num1.text, let n2 = num2.text{
            if let number1 = Int(n1), let number2 = Int(n2){
                result = number1 + number2
            }
        }
        showResult(result: result)
    }
    
    @IBAction func subtractNumbers(_ sender: UIButton) {
        if let n1 = num1.text, let n2 = num2.text{
            if let number1 = Int(n1), let number2 = Int(n2){
                result = number1 - number2
            }
        }
        showResult(result: result)
    }
    
    @IBAction func multiplyNumbers(_ sender: UIButton) {
        if let n1 = num1.text, let n2 = num2.text{
            if let number1 = Int(n1), let number2 = Int(n2){
                result = number1 * number2
            }
        }
        showResult(result: result)
    }
    
    @IBAction func divideNumbers(_ sender: UIButton) {
        if let n1 = num1.text, let n2 = num2.text{
            if let number1 = Int(n1), let number2 = Int(n2){
                result = number1 / number2
            }
        }
        showResult(result: result)
    }
    
    func showResult(result: Int ) {
        resultLabel.text = String(result)
    }
}

