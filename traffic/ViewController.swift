//
//  ViewController.swift
//  traffic
//
//  Created by Владимир Падусов on 31.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var yellowLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var lightButton: UIButton!
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    var currentLight = CurrentLight.green
    let on = 1.0
    let off = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }

    @IBAction func lightChanged() {
        
        switch currentLight {
        case .red:
            redLabel.alpha = off
            yellowLabel.alpha = on
            currentLight = .yellow
        case .yellow:
            yellowLabel.alpha = off
            greenLabel.alpha = on
            currentLight = .green
        case .green:
            greenLabel.alpha = off
            redLabel.alpha = on
            currentLight = .red
        }
    }
    

    
    func configUI() {
        
        redLabel.backgroundColor = .red
        yellowLabel.backgroundColor = .yellow
        greenLabel.backgroundColor = .green
        redLabel.alpha = off
        yellowLabel.alpha = off
        greenLabel.alpha = off

        redLabel.layer.cornerRadius = (redLabel.frame.size.width / 2)
        redLabel.clipsToBounds = true
        yellowLabel.layer.cornerRadius = (yellowLabel.frame.size.width / 2)
        yellowLabel.clipsToBounds = true
        greenLabel.layer.cornerRadius = (greenLabel.frame.size.width / 2)
        greenLabel.clipsToBounds = true
        
        lightButton.setTitle("Start", for: .normal)
        
    }
    
    
}

