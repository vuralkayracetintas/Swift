//
//  ViewController.swift
//  layouts
//
//  Created by Vural Kayra Çetintaş on 24.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width   = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textColor = UIColor.red
        myLabel.textAlignment = .center
        
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 /  2 , y: height * 0.5, width: 100, height: 100)
        view.addSubview(myLabel)
        
    }


}

