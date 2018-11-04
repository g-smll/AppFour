//
//  AppUIButton.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/4.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class AppUIButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = Theme.tinkColor
        layer.cornerRadius = frame.height / 2
        setTitleColor(UIColor.white, for: .normal)
    }
}
