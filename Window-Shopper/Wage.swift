//
//  Wage.swift
//  Window-Shopper
//
//  Created by Chris Smith on 13/09/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import Foundation

class Wage{
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
