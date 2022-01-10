//
//  ViewController.swift
//  TrafficLights
//
//  Created by DAV on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var showTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTextButton.layer.cornerRadius = 20
        redLightView.layer.cornerRadius = 100
        yellowLightView.layer.cornerRadius = 100
        greenLightView.layer.cornerRadius = 100
    }

    @IBAction func switchLightButton(_ sender: Any) {
    }
    
}

