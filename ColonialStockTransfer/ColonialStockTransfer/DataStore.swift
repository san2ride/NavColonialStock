//
//  DataStore.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/20/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    override private init() {}
    
    var items = ["About Us", "Blog", "Forms", "FAQ", "Feedback"]
    var moresArray = [More]()
    
    func seedMore() {
        
        let AboutUs = More(name: "About Us", imageName: "")
        self.moresArray.append(AboutUs)
        
        let Blog = More(name: "Blog", imageName: "")
        self.moresArray.append(Blog)
        
        let Forms = More(name: "Forms", imageName: "")
        self.moresArray.append(Forms)
        
        let FAQ = More(name: "FAQ", imageName: "")
        self.moresArray.append(FAQ)
        
        let Feedback = More(name: "Feedback", imageName: "")
        self.moresArray.append(Feedback)
        
    }
    
    func moreAtIndex(_ index: Int) -> More? {
        if self.moresArray.count >= 0 && index < self.moresArray.count {
            return self.moresArray[index]
        }
        return nil
    }
        

}
