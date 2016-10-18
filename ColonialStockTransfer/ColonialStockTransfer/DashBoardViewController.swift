//
//  DashBoardViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var reportsTabBar: UITabBarItem!
    @IBOutlet weak var moreTabBar: UITabBarItem!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationBar
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo2")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if (item.tag == 0) {
            self.performSegue(withIdentifier: "ReportSegue", sender: nil)
        }
        else if (item.tag == 1) {
            self.performSegue(withIdentifier: "MoreSegue", sender: nil)
        }
        
    }
    
    
        
    
        
    
   
}
