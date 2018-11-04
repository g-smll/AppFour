//
//  UIViewExtensions.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/3.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

extension UIView {
    
    func addShadowAndRoundedCorners(){
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
    }

}
