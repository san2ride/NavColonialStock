//
//  ShareholderListTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/31/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class ShareholderListTableViewController: UITableViewController {

    var shareholders = ["Colonial Stock, TD Ameritrade", "Scottrade", "eTrade",]

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return shareholders.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3", for: indexPath)
        
        let shareholderName = shareholders[indexPath.row]
        cell.textLabel?.text = shareholderName
        cell.imageView?.image = UIImage(named: shareholderName)
        
        return cell
    }
    
}
