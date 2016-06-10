//
//  DefaultStorage.swift
//  CRM
//
//  Created by Monu Rathor on 24/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class DefaultStorage: NSObject {
    
    let userDefault : NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    func getCurrentUser() -> User? {
        if checkKeyIsExist(Constant.USERDEFAULT_CURRENTUSER) {
            
        }
        return nil;
    }
    
    func checkKeyIsExist(key:String) -> Bool {
        if (userDefault.valueForKey(key) != nil) {
            return true
        }
        else{
            return false
        }
    }
    
}
