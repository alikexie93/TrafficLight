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
    //Здесь мы задали цвета через перечисление enum и используем их через расширение extension, и задали текущий цвет красный
    private let lightOn: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 16
        
        print("Размер стороны, доступный в методе viewDidLoad: \(redTrafficLight.frame.height)")
        
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.height / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
            //currentLight = .red
            //redTrafficLight.alpha = lightOn
            //Ранее мы уже установили текущий свет и поэтому не нужно его устанавливать в данном методе
        }
        switch currentLight {
        case .red:
            greenTrafficLight.alpha = 0.3
            redTrafficLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redTrafficLight.alpha = 0.3
            yellowTrafficLight.alpha = lightOn
            currentLight = .green
        case .green:
            greenTrafficLight.alpha = lightOn
            yellowTrafficLight.alpha = 0.3
            currentLight = .red
        }
    }
    
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
