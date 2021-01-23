//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Yoonsoo Park on 1/22/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BmiBrain {
    let extreamObeseBMIStart : Float = 40
    let obeseBMIRange : Array<Float> = [30 , 39]
    let overWeightRange : Array<Float> = [25, 29]
    let healthyRange : Array<Float> = [19, 24]
    let underWeightBMIEnd : Float = 18

    func calBmi(weight : Float, height : Float) -> Float {
        return weight / pow(height, 2)
    }
    
    func getBGColorBasedBMI(bmi : Float)-> UIColor {
        var color : UIColor = .blue
        if(bmi >= extreamObeseBMIStart) {
            color = .red
        }
        else if (bmi >= obeseBMIRange[0] && bmi <= obeseBMIRange[1]) {
            color =  .orange
        }
        else if (bmi >= overWeightRange[0] && bmi <= overWeightRange[1]) {
            color =  .yellow
        }
        else if (bmi >= healthyRange[0] && bmi <= healthyRange[1]) {
            color =  .green
        }
        return color
    }
}
