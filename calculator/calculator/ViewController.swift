//
//  ViewController.swift
//  calculator
//
//  Created by Vural Kayra Çetintaş on 23.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var _resultx = 0
    }


    @IBAction func add(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let _resultx = firstNumber + secondNumber
                result.text = String(_resultx)
            }
        }
    }
    
    @IBAction func max(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let _resultx = firstNumber * secondNumber
                result.text = String(_resultx)
            }
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let _resultx = firstNumber - secondNumber
                result.text = String(_resultx)
            }
        }
    }
    
    
    @IBAction func divided(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let _resultx = firstNumber / secondNumber
                result.text = String(_resultx)
            }
        }
    }
}

