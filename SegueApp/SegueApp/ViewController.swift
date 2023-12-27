//
//  ViewController.swift
//  SegueApp
//
//  Created by Vural Kayra Çetintaş on 27.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dataTransferButton(_ sender: Any) {
        userName = nameTextField.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            
            let destinationVC = segue.destination as? ViewControllerSecond
            
            destinationVC?.myName = userName
        }
    }
    
}

