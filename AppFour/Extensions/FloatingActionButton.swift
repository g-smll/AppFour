//
//  FloatingActionButton.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/4.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    
    override func draw(_ rect: CGRect) {
        layer.backgroundColor = Theme.Tink?.cgColor
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }

}
