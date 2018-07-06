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

//MARK: - IBActions
extension PlayersTableViewController{
    @IBAction func  cancelToPlayersTableViewController(_ segue: UIStoryboardSegue){
        
    }
    @IBAction func  savePlayerDetails(_ segue: UIStoryboardSegue){
        guard let playerDetailsViewController = segue.source as? PlayerDetailsTableViewController,
        let player = playerDetailsViewController.player else {
            return
        }
        players.append(player)
        let indexPath = IndexPath(row:players.count-1,section:0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
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
