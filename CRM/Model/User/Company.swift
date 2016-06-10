//
//  Company.swift
//  CRM
//
//  Created by Monu Rathor on 25/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class Company: NSObject {

    var companyId : NSInteger = 0
    var companyName : String = ""
    var companyLogo : String = ""
    var companyFacebookPage : String = ""
    
    override init() {
        super.init()
    }
    
    convenience init(companyData : NSDictionary) {
        self.init()
        
        if Utility.hashKey(companyData, Key: Constant.PARAM_COMPANYID) {
            companyId = companyData.valueForKey(Constant.PARAM_COMPANYID) as! NSInteger
        }
        
        if Utility.hashKey(companyData, Key: Constant.PARAM_COMPANYNAME) {
            companyName = companyData.valueForKey(Constant.PARAM_COMPANYNAME) as! String
        }
        
        if Utility.hashKey(companyData, Key: Constant.PARAM_COMPANYLOGO) {
            companyLogo = companyData.valueForKey(Constant.PARAM_COMPANYLOGO) as! String
        }
        
        if Utility.hashKey(companyData, Key: Constant.PARAM_COMPANYFACEBOOKPAGE) {
            companyFacebookPage = companyData.valueForKey(Constant.PARAM_COMPANYFACEBOOKPAGE) as! String
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(companyId, forKey: Constant.PARAM_COMPANYID)
        aCoder.encodeObject(companyName, forKey: Constant.PARAM_COMPANYNAME)
        aCoder.encodeObject(companyLogo, forKey: Constant.PARAM_COMPANYLOGO)
        aCoder.encodeObject(companyFacebookPage, forKey: Constant.PARAM_COMPANYFACEBOOKPAGE)
    }
    
    required init(coder decoder: NSCoder) {
        super.init()
        
        companyId = decoder.decodeIntegerForKey(Constant.PARAM_COMPANYID)
        companyName = decoder.decodeObjectForKey(Constant.PARAM_COMPANYNAME) as! String
        companyLogo = decoder.decodeObjectForKey(Constant.PARAM_COMPANYLOGO) as! String
        companyFacebookPage = decoder.decodeObjectForKey(Constant.PARAM_COMPANYFACEBOOKPAGE) as! String
        
        
    }
    
}
