//
//  Ext+CollectionViewDataSource.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

extension StatsDetailViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StatsDetailCell", for: indexPath) as? StatsDetailCollectionViewCell else { return UICollectionViewCell() }
        
        
        let player = statsController?.playerStats
        cell.player = player
        
        switch indexPath.item {
        case 0:
            cell.gameModeLabel.text = "Solos"
            cell.gameMode = .solos
            cell.totalWinsLabel.text = player?.stats.solos.wins
            cell.winRatioLabel.text = player?.stats.solos.winRatio
            cell.totalKillsLabel.text = player?.stats.solos.kills
            cell.kdLabel.text = player?.stats.solos.killDeathRatio
            cell.kpgLabel.text = player?.stats.solos.killsPerGame
            cell.totalMatchesLabel.text = player?.stats.solos.matches
            cell.imageView.image = UIImage(named: "MySkin")
        case 1:
            cell.gameModeLabel.text = "Duos"
            cell.gameMode = .duos
            cell.totalWinsLabel.text = player?.stats.duos.wins
            cell.winRatioLabel.text = player?.stats.duos.winRatio
            cell.totalKillsLabel.text = player?.stats.duos.kills
            cell.kdLabel.text = player?.stats.duos.killDeathRatio
            cell.kpgLabel.text = player?.stats.duos.killsPerGame
            cell.totalMatchesLabel.text = player?.stats.duos.matches
            cell.imageView.image = UIImage(named: "SkullTrooper")
        case 2:
            cell.gameModeLabel.text = "Squads"
            cell.gameMode = .squads
            cell.totalWinsLabel.text = player?.stats.squads.wins
            cell.winRatioLabel.text = player?.stats.squads.winRatio
            cell.totalKillsLabel.text = player?.stats.squads.kills
            cell.kdLabel.text = player?.stats.squads.killDeathRatio
            cell.kpgLabel.text = player?.stats.squads.killsPerGame
            cell.totalMatchesLabel.text = player?.stats.squads.matches
            cell.imageView.image = UIImage(named: "FortniteBlackKnight")
        case 3:
            cell.gameModeLabel.text = "Lifetime Stats"
            cell.gameMode = .lifetime
            cell.totalWinsLabel.text = player?.lifeTimeStats?[8].value
            cell.winRatioLabel.text = player?.lifeTimeStats?[9].value
            cell.totalKillsLabel.text = player?.lifeTimeStats?[10].value
            cell.kdLabel.text = player?.lifeTimeStats?[11].value
            cell.kpgLabel.text = player?.stats.squads.killsPerGame
            cell.totalMatchesLabel.text = player?.lifeTimeStats?[7].value
            cell.imageView.image = UIImage(named: "RenegadeRaider")
        default:
            cell.gameMode = .lifetime
        }
        
        return cell
    }
    
    
}
