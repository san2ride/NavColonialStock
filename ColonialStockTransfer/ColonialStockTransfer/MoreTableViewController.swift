//
//  MoreTableViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 11/3/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController {


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationBar
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo15")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
    }

}
