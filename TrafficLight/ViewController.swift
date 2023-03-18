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
        //Let corner radius to button
        startButton.layer.cornerRadius = 16
        
        //Change traffic lights to circle
        redTrafficLight.layer.cornerRadius = 50
        yellowTrafficLight.layer.cornerRadius = 50
        greenTrafficLight.layer.cornerRadius = 50
        
        //Turn lights off
        redTrafficLight.alpha = lightOff
        yellowTrafficLight.alpha = lightOff
        greenTrafficLight.alpha = lightOff
    }

    @IBAction func startButtonTapped() {
        //Change button title to "Next" while press and red light ON
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
            currentLight = "red"
            redTrafficLight.alpha = lightOn
        } else {
            switch currentLight {
            //Switch light color to yellow if current light is red
            case "red":
                redTrafficLight.alpha = lightOff
                yellowTrafficLight.alpha = lightOn
                currentLight = "yellow"
            //Switch light color to green if current light is yellow
            case "yellow":
                yellowTrafficLight.alpha = lightOff
                greenTrafficLight.alpha = lightOn
                currentLight = "green"
            //Switch light color to red if current light is green
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

