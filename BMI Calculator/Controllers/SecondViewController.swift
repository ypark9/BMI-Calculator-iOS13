//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Yoonsoo Park on 1/22/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit //this already has Foundation
//import Foundation

class SecondViewController: UIViewController {
    var bmiValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
