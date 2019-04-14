//
//  ViewController.swift
//  tryp
//
//  Created by Rui Lim on 4/13/19.
//  Copyright © 2019 Rui Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let cardImage = [UIImage(named: "ticket"), UIImage(named:"ticket"), UIImage(named:"ticket"), UIImage(named:"ticket"), UIImage(named:"ticket"), UIImage(named:"ticket"), UIImage(named:"ticket"), UIImage(named:"ticket")]
    
    let cardPic = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8")]
    
    
    let cardName = ["tokyo", "london", "paris", "saigon", "new york", "beijing", "los angeles", "boston"]
    
    let cardDate = ["4/19", "3/19", "1/19", "9/18", "8/18", "6/18", "9/17", "8/17"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.cardName.text = cardName[indexPath.row]
        cell.cardDate.text = cardDate[indexPath.row]
        cell.cardImage.image = cardImage[indexPath.row]
        cell.cardPic.image = cardPic[indexPath.row]
        
        return cell
        
    }
    


}

