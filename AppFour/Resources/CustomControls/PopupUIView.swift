//
//  PopupUIView.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/4.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class PopupUIView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
        
        backgroundColor = Theme.backgroundColor
    }

}
