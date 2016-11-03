//
//  NewsBlogTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 11/1/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class NewsBlogTableViewController: UITableViewController {
    
    var blogs = ["What is DTC Eligibility?", "Look No Further for Your Crowdfunding Transfer Agent", "SEC Meeting on Small and Emerging Companies", "IEX - A New National Stock Exchange", "OTCQX Rules Release Number 11", "What Comprehensive Stock Transfer Services Really Look Like", "Funding Portal Guide for Title III Equity Crowdfunding"]
    
    

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return blogs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell8", for: indexPath)

        let blogName = blogs[indexPath.row]
        cell.textLabel?.text = blogName
        cell.imageView?.image = UIImage(named: blogName)

        return cell
    }
    

    
}
