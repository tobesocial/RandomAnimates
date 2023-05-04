//
//  ViewController.swift
//  RandomAnimates
//
//  Created by Дмитрий Федоров on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimatedViewController: UIViewController {
    
    var animation = Animation.getAnimations()
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 15
        animateButton.layer.cornerRadius = 15
        
        setValueLabels()
    }
    
    @IBAction func animateButtonPressed() {
        makeAnimation()
        setValueLabels()
        updateButtonTitle()
    }
    
    private func makeAnimation() {
        springAnimationView.animation = animation.title
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.damping = animation.damping
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
    
    private func setValueLabels() {
        presentLabel.text = animation.title
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
    
    private func updateButtonTitle() {
        let nextAnimation = Animation.getAnimations()
        let buttonTitle = "Run \(nextAnimation.title)"
        animateButton.setTitle(buttonTitle, for: .normal)
        animation = nextAnimation
    }

}

