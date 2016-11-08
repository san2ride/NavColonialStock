//
//  DashBoardViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import Firebase

class DashBoardViewController: UIViewController {
    
   
    @IBOutlet weak var bearBullImage: UIImageView!

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationItem
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo16")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var imagesArray = [UIImage]()
        
        for i in 1...4 {
            
            if let image = UIImage(named: "\(i)bb") {
                
                imagesArray.append(image)
                print("bb_\(i)")
            }
        }
        
        bearBullImage.animationImages = imagesArray
        bearBullImage.animationDuration = 1.5
        bearBullImage.animationRepeatCount = 0
        bearBullImage.startAnimating()
        
    }

        
}
    

        
   
    
    
        
    
        
    
   

