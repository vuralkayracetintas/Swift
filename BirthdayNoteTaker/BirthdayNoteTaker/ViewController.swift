//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Vural Kayra Çetintaş on 27.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var birthdayText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedBirthday = UserDefaults.standard.object(forKey: "birhday")
        
        
        //Casting as?  - as!
        if let newName = savedName as? String{
            
            nameText.text = "Name : \(newName)"
        }
        
        if let newBirthday = savedBirthday as? String{
            birthdayText.text = "Birthday : \(newBirthday)"

            
        }
        
    }

    @IBAction func deleteButton(_ sender: Any) {
        
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedBirthday = UserDefaults.standard.object(forKey: "birhday")
        

        if(savedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameText.text = "Name : "
        }
        if(savedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birhday")
            birthdayText.text = "Birthday : "
        }
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let name = nameTextField.text
        let birhday = birthdayTextField.text
        
        
        UserDefaults.standard.set(name, forKey:"name")
        UserDefaults.standard.set(birhday, forKey:"birhday")
        
        nameText.text = "Name : \(name!)"
        birthdayText.text = "Birthday : \(birhday!)"

        

    }
}

