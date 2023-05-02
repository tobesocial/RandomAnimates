//
//  ViewController.swift
//  RandomAnimates
//
//  Created by Дмитрий Федоров on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimatedViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "fall"
        springAnimationView.curve = "easeInOut"
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.duration = 3
        sender.animate()
    }
    
}

