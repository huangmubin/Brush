//
//  RoundView.swift
//  Brush
//
//  Created by 黄穆斌 on 16/6/16.
//  Copyright © 2016年 Myron. All rights reserved.
//

import UIKit

//@IBDesignable
class RoundView: UIView {

    @IBInspectable
    var corner: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = corner
            self.setNeedsDisplay()
        }
    }
    
}
