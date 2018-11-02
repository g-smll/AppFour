//
//  TripFunctions.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/2.
//  Copyright © 2018 陈纲. All rights reserved.
//

import Foundation

class  TripFunction {
    static func createTrip(tripModel: TripModel){
        
    }
    
    static func readTrips(completion: @escaping () -> ()){
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModel(title: "上海"))
                Data.tripModels.append(TripModel(title: "北京"))
                Data.tripModels.append(TripModel(title: "深圳"))
                Data.tripModels.append(TripModel(title: "云南"))
            }
            
            DispatchQueue.main.async {
                completion()
            }
        }
        
    }
    
    
    static func updateTrip(tripModel: TripModel){
        
    }
    
    static func deleteTrip(tripModel: TripModel){
        
    }
}
