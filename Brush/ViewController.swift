//
//  ViewController.swift
//  Brush
//
//  Created by 黄穆斌 on 16/6/16.
//  Copyright © 2016年 Myron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var menuView: MenuView!
    
    @IBAction func slider1(sender: UISlider) {
        menuView.space = menuView.frame.width * CGFloat(sender.value)
        menuView.setNeedsDisplay()
    }
    
    @IBAction func slider2(sender: UISlider) {
    }
    
}
