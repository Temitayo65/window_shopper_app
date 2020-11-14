//
//  Wage.swift
//  shopper
//
//  Created by owner on 14/11/2020.
//

import Foundation


class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double)->Int{
        return Int(ceil(price/wage))
        
    }
    
    
    
    
}
