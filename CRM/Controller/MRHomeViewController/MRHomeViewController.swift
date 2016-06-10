//
//  MRHomeViewController.swift
//  CRM
//
//  Created by Monu Rathor on 08/06/16.
//  Copyright © 2016 MR. All rights reserved.
//

import UIKit

class MRHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableView Delegate Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeLeadCell", forIndexPath: indexPath) as! MRHomeLeadCell
        if indexPath.row % 2 == 0 {
            cell.cellWithTheameName(Constant.CELLTHEME_ORANGE)
        }
        else{
            cell.cellWithTheameName(Constant.CELLTHEME_BLUE)
        }
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
