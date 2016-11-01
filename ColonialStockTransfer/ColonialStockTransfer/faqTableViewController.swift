//
//  faqTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/28/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class faqTableViewController: UITableViewController {

    var faqs = ["How do I obtain a Medallion Signature Guarantee?", "What is Restricted Stock?", "What shareholder information is required to issue stock?", "Where do I send certificates for transfer?", "What payment methods do you accept?", "How do I transfer shares to another person?", "How do I transfer shares from a custodian to a minor who is now of age?", "How do I transfer shares from a US citizen decedent?", "How do I transfer shares from a foreign decedent?", "How do I transfer shares from a decedent joint tenant?", "How do I change the name (e.g. legal name change) on my shares?", "How do I transfer my shares into a trust registration?", "How do I transfer my shares from a trust registration?", "How can I replace lost certificates?", "How can I change my address?", "How can I obtain general information regarding my account information?",]

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return faqs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQCell", for: indexPath)

        let faqName = faqs[indexPath.row]
        cell.textLabel?.text = faqName
        cell.imageView?.image = UIImage(named: faqName)

        return cell
    }


    
}
