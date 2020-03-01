//
//  Habit.swift
//  Habitual
//
//  Created by Gonzalo Birrueta on 3/1/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

struct Habit {

    var title: String
    let dateCreated: Date
    var selectedImage: UIImage
    
    var currentStreak: Int
    var bestStreak: Int
    var lastCompletionDate: Date?
    var numberOfCompletions: Int
    
    
    var completedToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
    
    
    enum Images: Int, CaseIterable {
        case book
        case bulb
        case clock
        case code
        case drop
        case food
        case grow
        case gym
        case heart
        case lotus
        case other
        case pet
        case pill
        case search
        case sleep
        case tooth

        var image: UIImage {
            guard let image = UIImage(named: String(describing: self)) else {
                fatalError("image \(self) not found")
            }

            return image
        }
    }
    
}


