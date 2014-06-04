//
//  ViewController.swift
//  swifttest
//
//  Created by 乾 夏衣 on 2014/06/04.
//  Copyright (c) 2014年 K Inc. All rights reserved.
//

import UIKit

var data: String[] = []

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var collectionView : UICollectionView
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let json = "http://dl.dropboxusercontent.com/u/7817937/nameko.json"
        let uri = NSURL(string: json)
        let uridata = NSData(contentsOfURL: uri)
        let objects = uridata.objectFromJSONData() as NSDictionary
        let array = objects.objectForKey("images") as String[]
        data += array
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as MyCollectionViewCell
        let url = NSURL(string: data[indexPath.row])
        let placeholder = UIImage(named: "transparent.png")
        cell.image.setImageWithURL(url, placeholderImage: placeholder)
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

