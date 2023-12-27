//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Vural Kayra Çetintaş on 27.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var characterLabel: UILabel!
    var isBuzz = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    
    @objc func changePic(){
        
        
//        if imageView.image == UIImage(named: "buzz"){
//            imageView.image = UIImage(named: "woody")
//            characterLabel.text = "Woody"
//        } else {
//            imageView.image = UIImage(named: "buzz")
//            characterLabel.text = "Buzz"
//        }
        if isBuzz == true {
            imageView.image = UIImage(named: "woody")
            characterLabel.text = "Woody"
            isBuzz = false
        }else {
            imageView.image = UIImage(named: "buzz")
            characterLabel.text = "buzz"
            isBuzz = true
        }
        
        
    }


}

