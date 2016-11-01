//
//  ProxyVotingTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/31/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class ProxyVotingTableViewController: UITableViewController {
    
    var proxy = ["Proxy Voting","How to Vote Online", "View Proxy Materials Online"]


    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return proxy.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell5", for: indexPath)

        let proxyName = proxy[indexPath.row]
        cell.textLabel?.text = proxyName
        cell.imageView?.image = UIImage(named: proxyName)

        return cell
    }
    

    
}
