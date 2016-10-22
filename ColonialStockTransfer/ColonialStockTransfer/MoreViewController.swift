//
//  MoreViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/20/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var composeItem: UIBarButtonItem!
    
    var currentMore: More?
    var moresArray = [More]()
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationBar
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo15")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
//            DataStore.sharedInstance.moreAtIndex()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath) as! MoreTableViewCell
        
        if let more = DataStore.sharedInstance.moreAtIndex((indexPath as NSIndexPath).row) {
            
            cell.moreLabel.text = more.name
            cell.moreImageView.image = UIImage(named: more.imageName)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "More"
        } else {
            return nil
        }
    }

    

}
