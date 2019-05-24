//
//  CustomLoader.swift
//  EMDotLoader
//
//  Created by Lahiru Chathuranga on 5/14/19.
//  Copyright © 2019 ElegantMedia. All rights reserved.
//

import Foundation
import UIKit

class EMLoader: UIView {
    
    @IBOutlet  var contentView: UIView!
    @IBOutlet  weak var stack1View1: UIView!
    
    @IBOutlet  weak var stack1View2: UIView!
    @IBOutlet  weak var stack2View1: UIView!
    @IBOutlet  weak var stack2View2: UIView!
    
    
    private var timer1: Timer?
    private var timer2: Timer?
    private var timer3: Timer?
    private var timer4: Timer?
    
    // These are not been called. But keep
    public override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
        startTimers()
        
    }
    // These are not been called. But keep
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
        startTimers()
        
    }
    
    open func setBGColor(backColor: UIColor) {
        self.contentView.backgroundColor = backColor.withAlphaComponent(0.4)
    }

    open func setDotColor(dotColor: UIColor) {
        self.stack1View1.backgroundColor = dotColor
        self.stack1View2.backgroundColor = dotColor
        self.stack2View1.backgroundColor = dotColor
        self.stack2View2.backgroundColor = dotColor
    }
    
    private func startTimers() {
        
        timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(firstTimerTwo), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(secondTimerTwo), userInfo: nil, repeats: true)
        timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(thirdTimerTwo), userInfo: nil, repeats: true)
        timer4 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fourthTimerTwo), userInfo: nil, repeats: true)
    }
    
    private func nibSetup() {
        
        let vEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: vEffect)
        blurEffectView.frame = bounds
        blurEffectView.alpha = 0.3
        addSubview(blurEffectView)
        backgroundColor = .clear
        
        let nibView  = loadViewFromNib()
        nibView.frame = bounds
        nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        nibView.translatesAutoresizingMaskIntoConstraints = true
        addSubview(nibView)
    }
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return nibView
    }
    
    
    @objc private func firstTimerTwo() {
        let duration = 0.5
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            self.stack2View1.alpha = 1
            self.stack1View1.alpha = 0
            self.stack1View2.alpha = 0
            self.stack2View2.alpha = 0
            
        }, completion: nil)
        
    }
    
    @objc private func secondTimerTwo() {
        let duration = 0.5
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            
            self.stack1View2.alpha = 1
            self.stack1View1.alpha = 0
            self.stack2View2.alpha = 0
            self.stack2View1.alpha = 0
            
        }, completion: nil)
    }
    
    @objc private func thirdTimerTwo() {
        let duration = 0.5
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            
            self.stack2View2.alpha = 1
            self.stack1View1.alpha = 0
            self.stack1View2.alpha = 0
            self.stack2View1.alpha = 0
            
        }, completion: nil)
    }
    
    @objc private func fourthTimerTwo() {
        let duration = 0.5
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            
            self.stack1View1.alpha = 1
            self.stack1View2.alpha = 0
            self.stack2View2.alpha = 0
            self.stack2View1.alpha = 0
            
        }, completion: nil)
    }
}
