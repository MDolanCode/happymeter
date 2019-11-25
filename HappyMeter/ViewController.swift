//
//  ViewController.swift
//  HappyMeter
//
//  Created by Papa Kuma on 2019-11-22.
//  Copyright © 2019 Matt Dolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let batteryArray = ["battery1", "battery2", "battery3", "battery4","battery5"]
    
    var randomBattery: Int = 0

    @IBOutlet weak var batteryImageView: UIImageView!
    @IBOutlet weak var happyButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    
         happyButton.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
         happyButton.layer.cornerRadius = 25.0
         happyButton.tintColor = UIColor.white
        
         updateBatteryImage()
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        updateBatteryImage()
        
    }
    
    func updateBatteryImage() {
        
        randomBattery = Int.random(in: 0 ... 4)
        batteryImageView.image = UIImage(named: batteryArray[randomBattery])
        
    }
    
}

