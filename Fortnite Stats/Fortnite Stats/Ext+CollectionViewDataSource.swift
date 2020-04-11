//
//  Ext+CollectionViewDataSource.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

extension StoreAndChallengesViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        statsController.currentStore?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreItemCell", for: indexPath) as? StoreCollectionViewCell else { return UICollectionViewCell() }
        
        let item = statsController.currentStore?[indexPath.item]
        cell.item = item
        
//        cell.itemImageView.image = try? Data(contentsOf: item?.imageURL)
        
        return cell
    }
}
