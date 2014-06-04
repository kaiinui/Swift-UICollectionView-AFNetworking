//
//  ContainerController.swift
//  swifttest
//
//  Created by 乾 夏衣 on 2014/06/05.
//  Copyright (c) 2014年 K All rights reserved.
//

import UIKit

var pages : DAPagesContainer = DAPagesContainer()

class ContainerController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pages.willMoveToParentViewController(self)
        pages.view.frame = self.view.bounds
        self.view.addSubview(pages.view)
        pages.didMoveToParentViewController(self)
        
        var namekoVC = UIViewController()
        let namekoImg = UIImage(named: "nameko.jpg")
        let namekoImageView = UIImageView(image: namekoImg)
        namekoVC.view.addSubview(namekoImageView)
        
        namekoVC.title = "namekoSolo"
        
        var namekoCell = self.storyboard.instantiateViewControllerWithIdentifier("mainView") as UIViewController
        namekoCell.title = "namekoCellView"
        
        pages.viewControllers = [namekoVC, namekoCell]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
