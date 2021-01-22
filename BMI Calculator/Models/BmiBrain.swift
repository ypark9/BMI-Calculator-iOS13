//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Yoonsoo Park on 1/22/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct BmiBrain {
    func calBmi(weight : Float, height : Float) -> Float {
        return weight / pow(height, 2)
    }
}
