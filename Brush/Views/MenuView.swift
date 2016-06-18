//
//  MenuView.swift
//  Brush
//
//  Created by 黄穆斌 on 16/6/18.
//  Copyright © 2016年 Myron. All rights reserved.
//

import UIKit

class MenuView: UIView {

    /// 总宽度
    var space: CGFloat = 320
    /// 颜色
    var color = UIColor.blackColor()
    
    override func drawRect(rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext()
        CGContextSaveGState(ctx)
        
        let x1 = (frame.width - space) / 2
        let x0 = frame.width / 2
        let x2 = x0 + space / 2
        
        var xp1 = (x0 - x1) / 2 + x1
        xp1 = (xp1 - x1) > 20 ? x1 + 20 : xp1
        
        let xp2 = x0 + (x0 - xp1)
        
        CGContextMoveToPoint(ctx, x1, 0)
        CGContextAddCurveToPoint(ctx, xp1, 0, xp1, frame.height/2, x0, frame.height/2)
        CGContextAddCurveToPoint(ctx, xp2, frame.height/2, xp2, 0, x2, 0)
        
        CGContextMoveToPoint(ctx, x1, frame.height)
        CGContextAddCurveToPoint(ctx, xp1, frame.height, xp1, frame.height/2, x0, frame.height/2)
        CGContextAddCurveToPoint(ctx, xp2, frame.height/2, xp2, frame.height, x2, frame.height)
        
        CGContextSetFillColorWithColor(ctx, color.CGColor)
        CGContextFillPath(ctx)
        
        CGContextRestoreGState(ctx)
    }
}
