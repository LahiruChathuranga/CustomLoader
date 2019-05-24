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
    private var customLoaderOne: EMLoaderOne?
    
    
    public init(backgroundColor: UIColor? = .black, dotColor: UIColor? = .red, style: LoaderStyle = .dot ) {
        
        switch style {
            
        case .dot:
            customLoader = EMLoader.init(frame: UIScreen.main.bounds)
            if backgroundColor != nil {
                customLoader?.setBGColor(backColor: backgroundColor!)
            }
            if dotColor != nil {
                customLoader?.setDotColor(dotColor: dotColor!)
            }
            
        case .wave:
            customLoaderOne = EMLoaderOne.init(frame: UIScreen.main.bounds)
            
            if dotColor != nil {
                customLoaderOne?.setDotColor(color: dotColor!)
            }
        case .flipSqure:
            customLoader = EMLoader.init(frame: UIScreen.main.bounds)
            if backgroundColor != nil {
                customLoader?.setBGColor(backColor: backgroundColor!)
            }
            if dotColor != nil {
                customLoader?.setDotColor(dotColor: dotColor!)
            }
        }
    }
    
    public func showLoader() {
        if let loader = customLoader {
            UIApplication.shared.keyWindow?.addSubview(loader)
        }
        if let loader = customLoaderOne {
            UIApplication.shared.keyWindow?.addSubview(loader)
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
    case flipSqure
}
