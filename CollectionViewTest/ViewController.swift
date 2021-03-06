//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by Katagiri11 on 2015/12/19.
//  Copyright © 2015年 RodhosSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var dataSource : MyDataSource = MyDataSource()
    
    var collectionViewDelegate : MyCollectionViewDelegate = MyCollectionViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView.dataSource = self.dataSource
        self.collectionView.delegate = self.collectionViewDelegate
        
        self.scrollView.contentSize = CGSizeMake(600, 400)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


class MyDataSource : NSObject, UICollectionViewDataSource{

    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 100;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath);
        
        return cell;
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 5;
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
    {
        let sup = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "sup", forIndexPath: indexPath)
        return sup;
    }
    
    func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return false;
    }
    
    func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
    {
        
    }
}

class MyCollectionViewDelegate :NSObject, UICollectionViewDelegate {
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let v = collectionView.cellForItemAtIndexPath(indexPath)
        v?.backgroundColor = UIColor.whiteColor()
    }
    
}

class MyFlowLayout: UICollectionViewFlowLayout {
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
//    {
//        let size = CGSize(width: 400, height: 50)
//        return size
//    }
}


