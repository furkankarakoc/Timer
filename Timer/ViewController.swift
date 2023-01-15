//
//  ViewController.swift
//  Timer
//
//  Created by Furkan Karakoc on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    var timer = Timer()
    var counter = 0
    
    func startTimer() {
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func timerFunction(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter == -1 {
            timer.invalidate()
            timeLabel.text =  "Time is Over"
        }
    }

    @IBAction func startTimeButton(_ sender: Any) {
        startTimer()
    }
    
}

