//
//  MyCollectionViewCell.swift
//  swifttest
//
//  Created by 乾 夏衣 on 2014/06/04.
//  Copyright (c) 2014年 K All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet var image : UIImageView
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
}
