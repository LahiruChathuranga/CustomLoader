//
//  EMDotLoader.swift
//  EMDotLoader
//
//  Created by Lahiru Chathuranga on 5/14/19.
//  Copyright © 2019 ElegantMedia. All rights reserved.
//

import Foundation
import UIKit

public class EMDotLoader {
    
    //Variables
    private var customLoader: EMLoader?
    private var customLoaderOne: EMLoader_01?
    private var backMainView: UIView?
    
    
    public init(backView: UIView, backgroundColor: UIColor? = .black, dotColor: UIColor? = .red, style: LoaderStyle = .dot ) {
        self.backMainView = backView
        
        switch style {
            
        case .dot:
            customLoader = EMLoader.init(frame: backView.bounds)
            if backgroundColor != nil {
                customLoader?.setBGColor(backColor: backgroundColor!)
            }
            if dotColor != nil {
                customLoader?.setDotColor(dotColor: dotColor!)
            }
            
        case .wave:
            customLoaderOne = EMLoader_01.init(frame: backView.bounds)
            
            if dotColor != nil {
                customLoaderOne?.setDotColor(color: dotColor!)
            }
        }
    }
    
    public func showLoader() {
        if let loader = customLoader {
            backMainView?.addSubview(loader)
        }
        if let loader = customLoaderOne {
            backMainView?.addSubview(loader)
        }
    }
    public func hideLoader() {
        
        if let loader = customLoader {
            loader.removeFromSuperview()
        }
        if let loader = customLoaderOne {
            loader.removeFromSuperview()
        }
    }
    
}

public enum LoaderStyle {
    case dot
    case wave
}
