//
//  CustomLoaderThree.swift
//  CustomLoader
//
//  Created by Lahiru Chathuranga on 4/9/19.
//  Copyright © 2019 Elegant Media pvt ltd. All rights reserved.
//

import Foundation
import UIKit

class CustomLoaderTwo: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var dotView: UIView!
    
    
    var timer1: Timer?
    var timer2: Timer?
    
    // These are not been called. But keep
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
        startTimers()
        
    }
    // These are not been called. But keep
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
        startTimers()
        
    }
    
    func startTimers() {
        
        timer1 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(firstTimerTwo), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(flip), userInfo: nil, repeats: true)
        
    }
    
    private func nibSetup() {
        backgroundColor = .clear
        contentView = loadViewFromNib()
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = true
        addSubview(contentView)
    }
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return nibView
    }
    
    open func setBGColor(backColor: UIColor) {
        self.contentView.backgroundColor = backColor.withAlphaComponent(0.4)
    }
    
    open func setDotColor(dotColor: UIColor) {
        self.dotView.backgroundColor = dotColor
    }
    
    @objc func firstTimerTwo() {
        let duration = 1.0
        UIView.animate(withDuration: duration, delay: 0, options: .repeat, animations: {
            let rotate = CGAffineTransform(rotationAngle: 360)

            self.dotView.transform = rotate
            
        }, completion: nil)
        
    }
    @objc func flip() {
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: self.middleView, duration: 1.0, options: transitionOptions, animations: {
            self.middleView.isHidden = true
        })
        
        UIView.transition(with: self.dotView, duration: 1.0, options: transitionOptions, animations: {
            self.dotView.isHidden = false
        })
    }

    
    
}
