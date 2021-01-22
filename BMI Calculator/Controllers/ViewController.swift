//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var curBMI : Float = 0.0;
    var curHeight : Float = 1.5;
    var curWeight : Float = 130;
    var bmiBrain = BmiBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set initial status.
        heightSlider.setValue(Float(curHeight), animated: false)
        heightLabel.text = String(curHeight) + " m"
        weightSlider.setValue(Float(curWeight), animated: false)
        weightLabel.text = String(curWeight) + " kg"
    }
    @IBAction func heightChanged(_ sender: UISlider) {
        print(sender.value)
        updateHeight(sender.value)
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        updateWeight(sender.value)
    }
    
    func updateHeight(_ height : Float) {
        let roundedHeight = height
        curHeight = height
        heightLabel.text = String(format: "%.1f", roundedHeight) + " m"
    }
    func updateWeight(_ weight : Float) {
        var roundedWeight = weight
        curWeight = weight
        roundedWeight.round()
        weightLabel.text = String(roundedWeight) + " kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        curBMI = bmiBrain.calBmi(weight: curWeight, height: curHeight)
        print("This is current value : BMI \(curBMI) weight: \(curWeight) height: \(curHeight)")
    }
}

