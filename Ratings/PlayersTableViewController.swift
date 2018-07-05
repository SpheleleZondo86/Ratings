//
//  PlayersTableViewController.swift
//  Ratings
//
//  Created by Sphelele Zondo on 2018/07/05.
//  Copyright © 2018 SpheleleZondo. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    
    //MARK: - Properties
    var players = SampleData.generatePlayersData()
}
//MARK: - UITableViewDataSource
extension PlayersTableViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for:indexPath) as! PlayerTableViewCell
        let player = players[indexPath.row]
        cell.player = player

        return cell
    }
}
