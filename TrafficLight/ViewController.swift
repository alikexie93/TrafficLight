//
//  ViewController.swift
//  TrafficLight
//
//  Created by Алексей Филиппов on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = ""
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 16
        
        redTrafficLight.layer.cornerRadius = 50
        yellowTrafficLight.layer.cornerRadius = 50
        greenTrafficLight.layer.cornerRadius = 50
        
        redTrafficLight.alpha = lightOff
        yellowTrafficLight.alpha = lightOff
        greenTrafficLight.alpha = lightOff
    }

    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
            currentLight = "red"
            redTrafficLight.alpha = lightOn
        } else {
            switch currentLight {
            case "red":
                redTrafficLight.alpha = lightOff
                yellowTrafficLight.alpha = lightOn
                currentLight = "yellow"
            case "yellow":
                yellowTrafficLight.alpha = lightOff
                greenTrafficLight.alpha = lightOn
                currentLight = "green"
            case "green":
                greenTrafficLight.alpha = lightOff
                redTrafficLight.alpha = lightOn
                currentLight = "red"
            default:
                break
            }
        }
    }
    

}

