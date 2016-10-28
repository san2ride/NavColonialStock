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
    var more:More!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationBar
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo15")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let AboutUs = More(name: "About Us", imageName: "test")
    self.moresArray.append(AboutUs)
    
    let Blog = More(name: "Blog", imageName: "test")
    self.moresArray.append(Blog)
    
    let Forms = More(name: "Forms", imageName: "test")
    self.moresArray.append(Forms)
    
    let FAQ = More(name: "FAQ", imageName: "test")
    self.moresArray.append(FAQ)
    
    let Feedback = More(name: "Feedback", imageName: "test")
    self.moresArray.append(Feedback)
        
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 5
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath) as! MoreTableViewCell
        
        let more = self.moresArray[(indexPath as NSIndexPath).row]
        
        cell.titleLabel.text = more.name
        cell.titleImage.image = UIImage(named: more.imageName)
        
        return cell
        
//        switch ((indexPath as NSIndexPath).row) {
//        case 0:
//            cell.titleLabel.text = "About Us"
//            cell.titleImage.image = UIImage(named: more.imageName)
//        case 1:
//            cell.titleLabel.text = "blog"
//            cell.titleImage.image = UIImage(named: more.imageName)
//        case 2:
//            cell.titleLabel.text = "Forms"
//            cell.titleImage.image = UIImage(named: more.imageName)
//        case 3:
//            cell.titleLabel.text = "FAQ"
//            cell.titleImage.image = UIImage(named: more.imageName)
//        case 4:
//            cell.titleLabel.text = "Feedback"
//            cell.titleImage.image = UIImage(named: more.imageName)
//        default:
//            cell.titleLabel.text = ""
//            cell.titleImage.image = UIImage(named: more.imageName)
//        }
//        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        self.currentMore = self.moresArray[(indexPath as NSIndexPath).row]
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "More"
        } else {
            return nil
        }
    }

    

}
