//
//  Constant.swift
//  CRM
//
//  Created by Monu Rathor on 24/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

struct Constant {
    
    // MARK:- Story board Segue
    static let STORYBOARDSEGUE_LOGINSUCCESS = "LoginSuccess"
    
    // MARK:- Webservices URLs
    static let BASEURL = ""
    
    // MARK:- Webservices Action
    static let ACTION_LOGIN = "LOGIN"
    
    // MARK:- Webservice Params
    // MARK:- User Data
    static let PARAM_USERID     = "userId"
    static let PARAM_FULLNAME   = "fullName"
    static let PARAM_EMAIL      = "email"
    static let PARAM_MOBILE     = "mobile"
    static let PARAM_ROLE       = "role"
    static let PARAM_TIMEZONE   = "timeZone"
    static let PARAM_ADDRESS    = "address"
    static let PARAM_COMPANY    = "company"
    
    // MARK:- Address data
    static let PARAM_ADDRESSID      = "addressId"
    static let PARAM_ADDRESSTYPE    = "addressType"
    static let PARAM_STREET         = "street"
    static let PARAM_CITY           = "city"
    static let PARAM_STATE          = "state"
    static let PARAM_ZIP            = "zip"
    static let PARAM_COUNTRY        = "country"
    
    // MARK:- Company Data
    static let PARAM_COMPANYID              = "companyId"
    static let PARAM_COMPANYNAME            = "companyName"
    static let PARAM_COMPANYLOGO            = "companyLogo"
    static let PARAM_COMPANYFACEBOOKPAGE    = "companyFacebookPage"
    
    
    // MARK:- NSUSerDefaults
    static let USERDEFAULT_CURRENTUSER = "me"
    
    // MARK:- TableView Cell Theme Name
    static let CELLTHEME_ORANGE     = 1
    static let CELLTHEME_BLUE       = 2
    
    
    // Mark: - Application Color Codes
    static let COLOR_ORANGE         = UIColor(red: 255.0/255.0, green: 127.0/255.0, blue: 0, alpha: 0.8)
    static let COLOR_BLUE           = UIColor(red: 0, green: 177.0/255.0, blue: 229.0/255.0, alpha: 0.8)
    
    
}
