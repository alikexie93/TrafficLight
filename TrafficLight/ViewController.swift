//
//  ViewController.swift
//  TrafficLight
//
//  Created by Алексей Филиппов on 18.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 16
        
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.height / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        switch currentLight {
        case .red:
            greenTrafficLight.alpha = lightOff
            redTrafficLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redTrafficLight.alpha = lightOff
            yellowTrafficLight.alpha = lightOn
            currentLight = .green
        case .green:
            greenTrafficLight.alpha = lightOn
            yellowTrafficLight.alpha = lightOff
            currentLight = .red
        }
    }
    
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
