//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 10
    ]
    
    @IBAction func onEggTap(_ sender: UIButton) {
        let eggHardness : String = sender.titleLabel!.text!
        
        print("boiling for \(eggTimes[eggHardness]!) minutes")
        
        var eggBolingTimeInSeconds : Int = eggTimes[eggHardness]!;
        
        /// start timer which will run for eggBoilingTimeInSeconds and print every second of its execution and stop on reaching the end
        startTimer(seconds: eggBolingTimeInSeconds)
    }
    
    func startTimer(seconds: Int) {
        titleLabel.text = "Boiling..."
        
        var counter : Int = seconds;
        var timer : Timer?
        
        // Create a timer that fires every second
                timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
                    guard let self = self else { return }
                    
                    counter -= 1
                    print("Time left: \(counter) second(s)")
                    
                    titleLabel.text = "Time left: \(counter) second(s)"

                    // Stop the timer when the desired time is reached
                    if counter <= 0 {
                        titleLabel.text = "Done!"
                        
                        timer.invalidate()
                        print("Timer stopped after \(seconds) seconds")
                    }
                }
        
        RunLoop.current.add(timer!, forMode: .common)
    }
}
