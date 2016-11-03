//
//  FormTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 11/3/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class FormTableViewController: UITableViewController {

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell9", for: indexPath)

        // Configure the cell...

        return cell
    }
    


}
