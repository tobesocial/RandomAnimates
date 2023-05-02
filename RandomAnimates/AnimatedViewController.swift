//
//  ViewController.swift
//  RandomAnimates
//
//  Created by Дмитрий Федоров on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimatedViewController: UIViewController {

    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var buttonForAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedView.layer.cornerRadius = 15
        buttonForAnimation.layer.cornerRadius = 15
    }

    @IBAction func buttonForAnimationPressed(_ sender: SpringButton) {
        
    }
    
}

