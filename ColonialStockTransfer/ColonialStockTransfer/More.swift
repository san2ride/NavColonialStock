//
//  More.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/19/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class More: NSObject {
    
    var name: String
    var imageName: String
    var image: UIImage? {
        return UIImage(named: self.imageName)
    }
    
    init(name: String, imageName: String) {
        
        self.name = name
        self.imageName = imageName
    }
    
    
}
