//
//  TransactionsTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/31/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class TransactionsTableViewController: UITableViewController {
    
    var transactions = ["Professional Transfer Agent:", "Safe Harbor Protections:", "Cost Savings:", "First Class Service:", "Increased Issuer Networking:", "Registered EDGAR Filing Agent:"]

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return transactions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell4", for: indexPath)
        
        let transactionsName = transactions[indexPath.row]
        cell.textLabel?.text = transactionsName
        cell.imageView?.image = UIImage(named: transactionsName)
        
        return cell
    }

}
