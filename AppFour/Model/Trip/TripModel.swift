//
//  TripModel.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/2.
//  Copyright © 2018 陈纲. All rights reserved.
//

import Foundation

class TripModel {
    var id: String!
    var title: String!
    
    init(title: String) {
        id =  UUID().uuidString
        self.title = title;
    }
}
