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
        print("viewDidLoad function called")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called") //controller kayboldu
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called") // kaybolacak
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
        print("viewWillAppear function called") // gorunum gozukecek
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("viewDidAppear function called") // gorunum gozuktu
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

