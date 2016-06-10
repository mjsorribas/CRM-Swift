//
//  MRHomeLeadCell.swift
//  CRM
//
//  Created by Monu Rathor on 08/06/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class MRHomeLeadCell: UITableViewCell {

    @IBOutlet weak var btnAddLeads: UIButton!
    @IBOutlet weak var imgLeadType: UIImageView!
    @IBOutlet weak var viewLeadBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Utility.dropShadowOnButton(btnAddLeads)
        Utility.dropShadowOnView(self.contentView)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellWithTheameName(themeName : NSInteger) {
        if themeName == Constant.CELLTHEME_ORANGE {
            btnAddLeads.setTitleColor(Constant.COLOR_ORANGE, forState: UIControlState.Normal)
            viewLeadBackground.backgroundColor = Constant.COLOR_ORANGE;
            imgLeadType.image = UIImage(named: "CellThemeOrangeMobile")
            imgLeadType.tintColor = Constant.COLOR_ORANGE
        }
        else if themeName == Constant.CELLTHEME_BLUE{
            btnAddLeads.setTitleColor(Constant.COLOR_BLUE, forState: UIControlState.Normal)
            viewLeadBackground.backgroundColor = Constant.COLOR_BLUE;
            imgLeadType.image = UIImage(named: "CellThemeOrangeMobile")
            imgLeadType.tintColor = Constant.COLOR_BLUE
        }
    }

}
