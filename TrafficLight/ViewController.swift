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

    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 16
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
    }
    

}

