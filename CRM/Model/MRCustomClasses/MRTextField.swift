//
//  MRTextField.swift
//  CRM
//
//  Created by Monu Rathor on 26/05/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class MRTextField: UITextField {
    
    private let borderLayer = CALayer()
    private var placeholderLabel : UILabel? = nil
    private var leftImage : UIImageView? = nil
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        updateBorder()
        addLeftView()
    }
    
    func updateBorder(){
        borderLayer.frame = self.bounds
        borderLayer.borderWidth = 1.0
        borderLayer.borderColor = UIColor.init(colorLiteralRed:0.0, green: 177.0/255.0, blue: 229.0/255.0, alpha: 1.0).CGColor
        self.layer.addSublayer(borderLayer)
        
        //-- Change cursor color
        self.tintColor = UIColor.init(colorLiteralRed:0.0, green: 177.0/255.0, blue: 229.0/255.0, alpha: 1.0)
    }
    
    func addLeftView(){
        if leftImage == nil {
            self.leftViewMode = UITextFieldViewMode.Always
            leftImage = UIImageView(frame: CGRectMake(0, 0, 40, 40))
            leftImage?.contentMode = UIViewContentMode.Center
            //-- Find type of textfield and display accordingly image
            if self.tag == 101 { // Email TextField
                leftImage?.image = UIImage(named: "TextFieldEmail")
            }
            else if self.tag == 102 { // Password TextField
                leftImage?.image = UIImage(named: "TextFieldPassword")
            }
            else if self.tag == 103 { // Password TextField
                leftImage?.image = UIImage(named: "TextFieldUser")
            }
            else if self.tag == 104 { // Password TextField
                leftImage?.image = UIImage(named: "TextFieldCompany")
            }
            else if self.tag == 105 { // Password TextField
                leftImage?.image = UIImage(named: "TextFieldMobile")
            }
            
            self.leftView = leftImage
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

}
