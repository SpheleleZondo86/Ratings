//
//  PlayerDetailsTableViewController.swift
//  Ratings
//
//  Created by Sphelele Zondo on 2018/07/05.
//  Copyright © 2018 SpheleleZondo. All rights reserved.
//

import UIKit

class PlayerDetailsTableViewController: UITableViewController {
    
    //MARK: - Properties
    var player: Player?
    var game: String? = "Chess"{
        didSet{
            detailLabel.text = game
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text{
                player = Player(name: playerName, game: game, rating: 1)
        }
        if  segue.identifier == "PickGame",
            let gamePicker = segue.destination as? GamePickerTableViewController{
            gamePicker.selectedGame = game
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("init PlayerDetailsTableViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinit PlayerDetailsTableViewController")
    }
}
//MARK: - IBActions
extension PlayerDetailsTableViewController{
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue){
        if let gamePicker = segue.source as? GamePickerTableViewController, let selectedGame = gamePicker.selectedGame {
            game = selectedGame
        }
    }
}
//MARK: - UITableViewDelegate
extension PlayerDetailsTableViewController{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0 {
            //nameTextField.becomeFirstResponder()
        }
    }
}
