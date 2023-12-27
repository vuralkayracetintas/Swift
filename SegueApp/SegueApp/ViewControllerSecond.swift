//
//  ViewControllerSecond.swift
//  SegueApp
//
//  Created by Vural Kayra Çetintaş on 27.12.2023.
//

import UIKit

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = myName
        
    }
    



}
