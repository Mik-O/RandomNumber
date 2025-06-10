//
//  RandomNumber.swift
//  RandomNumber
//
//  Created by Таня Кожевникова on 11.06.2025.
//

import Foundation

struct RandomNumber {
    
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
