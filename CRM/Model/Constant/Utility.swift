//
//  Utility.swift
//  CRM
//
//  Created by Monu Rathor on 25/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class Utility: NSObject {

    // MARK: - Check KVC
    //-- Check key is exist is dictionary
    static func hashKey(data:NSDictionary, Key key:String) -> Bool{
        if (data.valueForKey(key) != nil) {
            return true
        }
        else{
            return false
        }
    }
    
    // MARK: - Drop Shadow On Controlls
    
    static func dropShadowOnButton(button : UIButton){
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        button.layer.shadowOffset = CGSizeMake(0, 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
    }
    
    static func dropShadowOnView(view : UIView){
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        view.layer.shadowOffset = CGSizeMake(0.0, 0.0)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowRadius = 5.0
    }
}
