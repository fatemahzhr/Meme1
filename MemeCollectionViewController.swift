//  MemeCollectionViewController.swift
//  MemeMe_version2.0
//
//  Created by Fatima Abdulraheem on 08/12/2018.
//

//Source Code: https://github.com/deborahepadilla/MemeMe-2.0/blob/master/MeMe/CollectionVC.swift

import UIKit
import Foundation

private let reuseIdentifier = "MemeCCell"

class MemeCollectionViewController: UICollectionViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    //var meme: [MStruct]!

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appDelegate.meme.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCCell", for: indexPath) as! MemeCollectionViewCell
        let meme = self.appDelegate.meme[indexPath.item]
        cell.CollectionImageView.image = meme.memedImage
        return cell
    }
    
    //******
    //When Selecting an item:
    //Collection: MemeDetailsIden
    //Source Code: https://www.youtube.com/watch?v=pU8eb03xvGc
/*
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, animations: ({
            cell?.frame = collectionView.bounds
            collectionView.isScrollEnabled = false
            }), completion: nil)
        cell?.superview?.bringSubviewToFront(cell!)
    }
*/
    
    //Another way than above becouse it doesnt get hidden after maximzing:
    //Source Code: https://www.youtube.com/watch?v=cCAfeTqsE_Y
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, animations: ({
            cell?.frame = collectionView.bounds
            collectionView.isScrollEnabled = false
        }), completion: nil)
        cell?.superview?.bringSubviewToFront(cell!)
        
        //get out of the selction:
        
        
    }//
    
    
    
}//End of Class MemeCollectionViewController
