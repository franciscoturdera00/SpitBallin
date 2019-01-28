//
//  BallSize.swift
//  Watch Extension
//
//  Created by Liam Stevenson on 1/23/19.
//  Copyright © 2019 William Stevenson. All rights reserved.
//

import Foundation
import SpriteKit

/// Represents the size of a ball
enum BallSize: Int {
    
    /// Does not split; disappears when shot
    case one = 1
    
    /// Splits into two ones
    case two = 2
    
    /// Splits into two twos
    case three = 3
    
    /// Splits into two fours
    case four = 4
    
    /// Splits into two fives
    case five = 5
    
    /// The y velocity at which the ball bounces off the floor
    var bounceHeight: CGFloat {
        
        switch self {
        case .one:
            return 0.3
        case .two:
            return 0.4
        case .three:
            return 0.5
        case .four:
            return 0.6
        case .five:
            return 0.7
        }
        
    }
    
    /// The radius of the ball
    var radius: CGFloat {
        
        switch self {
        case .one:
            return 0.03
        case .two:
            return 0.06
        case .three:
            return 0.09
        case .four:
            return 0.12
        case .five:
            return 0.15
        }
    }
    
    /// Color of the ball
    var color: UIColor {
            
            switch self {
            case .one:
                return .white
            case .two:
                return .red
            case .three:
                return .blue
            case .four:
                return .purple
            case .five:
                return .yellow
        }
    }
    
    /// The size of the next ball after a split; nil if it splits to nothing
    var nextBall: BallSize? {
        
        if self == .one { return nil }
        else { return BallSize(rawValue: self.rawValue - 1)! }
        
    }
    
}
