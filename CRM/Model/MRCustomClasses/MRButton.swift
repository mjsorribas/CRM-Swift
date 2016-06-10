//
//  MRButton.swift
//  CRM
//
//  Created by Monu Rathor on 01/06/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class MRButton: UIButton {

    private let borderLayer = CALayer()
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        addShadow()
    }
 
    func addBorder(){
        borderLayer.frame = self.bounds
        borderLayer.borderWidth = 1.0
        borderLayer.borderColor = UIColor.init(colorLiteralRed:0.0, green: 172.0/255.0, blue: 159.0/255.0, alpha: 1.0).CGColor
        self.layer.addSublayer(borderLayer)
    }
    
    func addShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).CGColor
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSizeMake(2, 3.0)
    }
    
}
