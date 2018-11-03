//
//  TripsTableViewCell.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/3.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cartView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cartView.addShadowAndRoundedCorners()
    }

    func setup(tripModel: TripModel) {
        titleLabel.text = tripModel.title
    }

}
