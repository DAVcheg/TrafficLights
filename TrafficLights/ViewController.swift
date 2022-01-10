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
    private var lightStatus = 0
    
    @IBOutlet var showTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTextButton.layer.cornerRadius = 20
        redLightView.layer.cornerRadius = 100
        yellowLightView.layer.cornerRadius = 100
        greenLightView.layer.cornerRadius = 100
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func switchLightButton() {
        switch lightStatus {
        case 0:
            redLightView.alpha = 1
            showTextButton.setTitle("NEXT", for: .normal)
            lightStatus = 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            lightStatus = 2
        case 2:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            lightStatus = 3
        case 3:
            greenLightView.alpha = 0.3
            showTextButton.setTitle("START", for: .normal)
            lightStatus = 0
        default:
            showTextButton.setTitle("ERROR", for: .normal)
        }
        
        
//        if  lightStatus == 0 {
//            redLightView.alpha = 1
//            showTextButton.setTitle("NEXT", for: .normal)
//            lightStatus = 1
//        }
//        if lightStatus == 1 {
//            redLightView.alpha = 0.3
//            yellowLightView.alpha = 1
//            lightStatus = 2
//        }
//        if lightStatus == 2 {
//            yellowLightView.alpha = 0.3
//            greenLightView.alpha = 1
//            lightStatus = 3
//        }
//        if lightStatus == 3 {
//            greenLightView.alpha = 0.3
//            showTextButton.setTitle("START", for: .normal)
//            lightStatus = 0
//        } else {
//            showTextButton.setTitle("ERROR", for: .normal)
//    }
        }
}

