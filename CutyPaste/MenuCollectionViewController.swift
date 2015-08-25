//
//  MenuCollectionViewController.swift
//  CutyPaste
//
//  Created by Catalina Balmaceda on 21-08-15.
//  Copyright (c) 2015 Catalina Balmaceda. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON



let reuseIdentifier = "MainImage"

class MenuCollectionViewController: UICollectionViewController {
    
    let postsController = PostInfoController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setItemsPerRowInLayout(1)

        
        //**** Llama a la funcion que lee los posts y los agrega a la postsController
        read()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        
        
        // Register cell classes
        self.collectionView!.registerNib(UINib(nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainImage")
        // Do any additional setup after loading the view.
        


    }
    
    
    func read() {

        
        Alamofire.request(.GET,"http://www.cutypaste.com/api/get_posts")
            .validate()
            .responseJSON { (_, _, json, _) -> Void in
                
                
                let data = JSON(json!)
                let infoPostsJson = data["posts"] as JSON
                self.postsController.addPosts(infoPostsJson)
                
                // Metodo verifica que haya informacion en el thread
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    println(self.postsController.listaPosts.count)
                    println(self.postsController.listaPosts[1].title)
                    self.collectionView?.reloadData()
                })
                
        }
    }
    
    func setItemsPerRowInLayout(itemsPerRow: CGFloat){
        let flowlayout = self.collectionViewLayout as! UICollectionViewFlowLayout
        
        if (self.collectionView != nil){
            var newItemSize:CGSize = flowlayout.itemSize;
            
            // Calculate the sum of the spacing between cells
            let totalSpacing:CGFloat = flowlayout.minimumInteritemSpacing * (itemsPerRow - 1.0);
            
            // Calculate how wide items should be
            newItemSize.width = (self.collectionView!.bounds.size.width - totalSpacing) / itemsPerRow;
            
            // Use the aspect ratio of the current item size to determine how tall the items should be
            if (flowlayout.itemSize.height > 0){
                let itemAspectRatio: CGFloat = flowlayout.itemSize.width / flowlayout.itemSize.height;
                newItemSize.height = newItemSize.width / itemAspectRatio;
            }
            
            // Set the new item size
            flowlayout.itemSize = newItemSize;
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 3
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MenuCollectionViewCell
    
        // Configure the cell
        if (self.postsController.listaPosts.count>0)
        {
            cell.MenuTitle.text = self.postsController.listaPosts[0].title
        }
        else
        {
            cell.MenuTitle.text = "Loading..."
        }
        
//      cell.MenuTitle.text = "hola"
//       var caca = self.postsController.listaPosts.count
//        println(caca)
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}