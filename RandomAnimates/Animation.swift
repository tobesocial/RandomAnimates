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
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let title = DataStore.shared.title.shuffled()
        let curve = DataStore.shared.curve.shuffled()
        let force = Double.random(in: 1.0...5.0)
        let delay = Double.random(in: 1.0...2.0)
        let duration = Double.random(in: 0.5...5.0)
        let damping = Double.random(in: 0.0...5.0)
        
        let iterationCount = min(
            title.count,
            curve.count
        )
        
        for index in 0..<iterationCount {
            let animation = Animation(
                title: title[index],
                curve: curve[index],
                force: force,
                delay: delay,
                duration: duration,
                damping: damping
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}
