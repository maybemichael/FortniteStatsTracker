//
//  StoreAndChallengesViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class StoreAndChallengesViewController: UIViewController {

    let statsController = StatsController()
    
    @IBOutlet weak var storeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storeCollectionView.delegate = self
        storeCollectionView.dataSource = self
        
        statsController.getCurrentStore { _ in
            self.storeCollectionView.reloadData()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
