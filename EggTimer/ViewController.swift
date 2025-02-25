//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var softEggTime : Int = 5
    var mediumEggTime : Int = 7
    var hardEggTime : Int = 10

    @IBAction func onEggTap(_ sender: UIButton) {
        let eggHardness : String = sender.titleLabel!.text!
        
        switch eggHardness {
            case "Soft":
                print("boiling for \(softEggTime) minutes")
            break
        case "Medium":
            print("boiling for \(mediumEggTime) minutes")
            break
        case "Hard":
            print("boiling for \(hardEggTime) minutes")
            break
        default:
            print("Invalid egg hardness")
            break
        }
        
        let loveScore = Int.random(in: 0...100)
        
        switch loveScore {
        case 81...100:
            print("positive love score")
            break
        case 41..<80:
            print("middle love score")
            break
        case ...40:
            print("low love score")
            break
        default :
            
            print("error in the love range")
            
            
            
        }
    
    }
}
