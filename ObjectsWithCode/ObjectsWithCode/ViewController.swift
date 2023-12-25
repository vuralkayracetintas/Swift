//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Vural Kayra Çetintaş on 24.12.2023.
//

import UIKit

class ViewController: UIViewController {
    let myLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
      
        myLabel.text = "Test Label, Hello test label"
        myLabel.backgroundColor = UIColor.green
        myLabel.textAlignment = .center
//        myLabel.frame.size = CGSize(width: 100, height: 100)
        myLabel.sizeToFit()
        myLabel.center = CGPoint(x: width * 0.5, y: height * 0.5)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("HELLO BUTTON", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
//        myButton.frame.size = CGSize(width: 100, height: 100)
        myButton.sizeToFit()
        myButton.center = CGPoint(x: width * 0.5, y: height * 0.55)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
     
        
        view.addSubview(myButton)
        
        
        
//        let label = UILabel()
//        label.text = "Your Text"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        
//
//        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        
//        view.addSubview(label)

    }

    
    @objc func myAction(){
        print("hello")

        myLabel.text = "Tapped button , Hello again"
        myLabel.sizeToFit()
    }
    


}

