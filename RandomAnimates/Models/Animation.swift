//
//  Animation.swift
//  RandomAnimates
//
//  Created by Дмитрий Федоров on 02.05.2023.
//

import Foundation

struct Animation {
    
    let title: String
    let curve: String
    
    let force: Double
    let delay: Double
    let duration: Double
    let damping: Double
    
    static func getAnimations() -> Animation {
        let title = DataStore.shared.animations.randomElement() ?? "pop"
        let curve = DataStore.shared.curves.randomElement() ?? "easeIn"
        
        let force = Double.random(in: 0.5...1.5)
        let duration = Double.random(in: 1.0...2.0)
        let delay = Double.random(in: 0.0...0.5)
        let damping = Double.random(in: 0.5...1.0)
        
        return Animation(
            title: title,
            curve: curve,
            force: force,
            delay: delay,
            duration: duration,
            damping: damping
        )
    }
}
