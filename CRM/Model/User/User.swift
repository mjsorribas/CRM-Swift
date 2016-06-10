//
//  User.swift
//  CRM
//
//  Created by Monu Rathor on 24/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var userId      : NSInteger = 0
    var fullName    : String = ""
    var email       : String = ""
    var mobile      : String = ""
    var role        : String = ""
    var timeZone    : String = ""
    var address     : Address? = nil
    var company     : Company? = nil
    
    //-- Override init method for initialize user details
    convenience init(userData : NSDictionary) {
        self.init()
        
        if Utility.hashKey(userData, Key: Constant.PARAM_USERID) {
            userId = userData.valueForKey(Constant.PARAM_USERID) as! NSInteger
        }
        
        if Utility.hashKey(userData, Key: Constant.PARAM_USERID) {
            fullName = userData.valueForKey(Constant.PARAM_FULLNAME) as! String
        }
        
        if Utility.hashKey(userData, Key: Constant.PARAM_EMAIL) {
            email = userData.valueForKey(Constant.PARAM_EMAIL) as! String
        }
        
        if Utility.hashKey(userData, Key: Constant.PARAM_MOBILE) {
            mobile = userData.valueForKey(Constant.PARAM_MOBILE) as! String
        }
        
        if Utility.hashKey(userData, Key: Constant.PARAM_ROLE) {
            role = userData.valueForKey(Constant.PARAM_ROLE) as! String
        }
        
        if Utility.hashKey(userData, Key: Constant.PARAM_TIMEZONE) {
            timeZone = userData.valueForKey(Constant.PARAM_TIMEZONE) as! String
        }
        
        address = Address(addressData: userData)
        company = Company(companyData: userData)
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(userId, forKey: Constant.PARAM_USERID)
        aCoder.encodeObject(fullName, forKey: Constant.PARAM_FULLNAME)
        aCoder.encodeObject(email, forKey: Constant.PARAM_EMAIL)
        aCoder.encodeObject(mobile, forKey: Constant.PARAM_MOBILE)
        aCoder.encodeObject(role, forKey: Constant.PARAM_ROLE)
        aCoder.encodeObject(timeZone, forKey: Constant.PARAM_TIMEZONE)
        aCoder.encodeObject(address, forKey: Constant.PARAM_ADDRESS)
        aCoder.encodeObject(company, forKey: Constant.PARAM_COMPANY)
    }
    
    
}
