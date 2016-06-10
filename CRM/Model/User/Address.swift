//
//  Address.swift
//  CRM
//
//  Created by Monu Rathor on 25/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class Address: NSObject {

    var addressId   : NSInteger = 0
    var addressType : String = ""
    var street      : String = ""
    var city        : String = ""
    var state       : String = ""
    var zip         : String = ""
    var country     : String = ""
    
    
    convenience init(addressData : NSDictionary) {
        self.init()
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_ADDRESSID) {
            addressId = addressData.valueForKey(Constant.PARAM_ADDRESSID) as! NSInteger
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_ADDRESSTYPE) {
            addressType = addressData.valueForKey(Constant.PARAM_ADDRESSTYPE) as! String
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_STREET) {
            street = addressData.valueForKey(Constant.PARAM_STREET) as! String
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_CITY) {
            city = addressData.valueForKey(Constant.PARAM_CITY) as! String
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_STATE) {
            state = addressData.valueForKey(Constant.PARAM_STATE) as! String
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_ZIP) {
            zip = addressData.valueForKey(Constant.PARAM_ZIP) as! String
        }
        
        if Utility.hashKey(addressData, Key: Constant.PARAM_COUNTRY) {
            country = addressData.valueForKey(Constant.PARAM_COUNTRY) as! String
        }
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(addressId, forKey: Constant.PARAM_ADDRESSID)
        aCoder.encodeObject(addressType, forKey: Constant.PARAM_ADDRESSTYPE)
        aCoder.encodeObject(street, forKey: Constant.PARAM_STREET)
        aCoder.encodeObject(city, forKey: Constant.PARAM_CITY)
        aCoder.encodeObject(state, forKey: Constant.PARAM_STATE)
        aCoder.encodeObject(zip, forKey: Constant.PARAM_ZIP)
        aCoder.encodeObject(country, forKey: Constant.PARAM_COUNTRY)
    }
    
}
