//
//  ViewController.swift
//  CustomLoader
//
//  Created by Lahiru Chathuranga on 4/5/19.
//  Copyright © 2019 Elegant Media pvt ltd. All rights reserved.
//

import UIKit

public class EMLoader_01: UIView {
    
    //MARK: outlets
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var stackView1: UIStackView!
    @IBOutlet private weak var stackView2: UIStackView!
    @IBOutlet private weak var stackView3: UIStackView!
    
    
   
    @IBOutlet private weak var stack1View3: UIView!
    
    
    @IBOutlet private weak var stack2View4: UIView!
    
    
    @IBOutlet private weak var stack3View2: UIView!
    
    
    @IBOutlet private weak var customView1: UIView!
    @IBOutlet private weak var customView2: UIView!
    
    @IBOutlet private var contentView: UIView!
    
    
    private var timer1: Timer?
    private var timer2: Timer?
    
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
    
    private func nibSetup() {
        let vEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: vEffect)
        blurEffectView.frame = bounds
        blurEffectView.alpha = 0.3
        addSubview(blurEffectView)
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
    
    public func setDotColor(color: UIColor) {
        stack1View3.backgroundColor = color
        stack2View4.backgroundColor = color
        stack3View2.backgroundColor = color
        customView1.backgroundColor = color
        customView2.backgroundColor = color
    }
    
    
    private func startTimers() {
        timer1 = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(firstTimer), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(secondTimer), userInfo: nil, repeats: true)
    }
    
    @objc private func firstTimer() {
        let duration = 0.2
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            self.customView1.center.y = 5
            
            
            self.stack1View3.center.y = -5
            
            
            self.stack2View4.center.y = 5
            
            
            self.stack3View2.center.y = -5
            
            
            self.customView2.center.y = 5
            
        }, completion: nil)
        
    }
    
    @objc private func secondTimer() {
        let duration = 0.2
        UIView.animate(withDuration: duration, delay: 0, options: .transitionCrossDissolve, animations: {
            self.customView1.center.y = -5
            
            
            self.stack1View3.center.y = 5
            
            
            self.stack2View4.center.y = -5
            
            
            self.stack3View2.center.y = 5
            
            
            self.customView2.center.y = -5
        }, completion: nil)
    }
    
    private func stopAnimate() {
        timer1?.invalidate()
        timer1?.invalidate()
    }
}

