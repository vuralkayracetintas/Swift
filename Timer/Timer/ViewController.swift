//
//  ViewController.swift
//  Timer
//
//  Created by Vural Kayra Çetintaş on 28.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
//        counter = 10
//        
//        timeLabel.text = "Time \(counter)"
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction(){
        timeLabel.text = "Timer \(counter)"
         counter -= 1
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Time's Over"
        }
        
    }

    @IBAction func startButton(_ sender: Any) {
    
        counter = 10
        
//        timeLabel.text = "Time \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)

        print("Clicked button")
    }
    
}

