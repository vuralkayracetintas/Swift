//
//  ViewController.swift
//  AlertMessages
//
//  Created by Vural Kayra Çetintaş on 27.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        

        
        if nameTextField.text == "" {
            makeAlert(alertTitle: "Error", alertMessage: "Name Not Found", okeyButtonTitle: "Okey", cancelButtonTitle: nil)
        } else if passwordTextField.text == ""{
            makeAlert(alertTitle: "Error", alertMessage: "Password Not Found", okeyButtonTitle: "Okey", cancelButtonTitle: "Cancel")
        } else if passwordTextField.text != passwordAgainTextField.text {
            makeAlert(alertTitle: "Error", alertMessage: "Password do not match", okeyButtonTitle: "Okey", cancelButtonTitle: nil)
        }else{
            makeAlert(alertTitle: "Success", alertMessage: "Sign up Successful", okeyButtonTitle: "Okey", cancelButtonTitle: nil)
        }
        
    }
    
    
    func makeAlert(alertTitle : String, alertMessage : String  ,okeyButtonTitle :String, cancelButtonTitle : String?){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let okeyButton = UIAlertAction(title: okeyButtonTitle, style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: cancelButtonTitle, style: .cancel, handler: nil)
        alert.addAction(okeyButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true)
        
    }
}
