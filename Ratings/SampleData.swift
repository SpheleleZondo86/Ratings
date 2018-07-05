//
//  SampleData.swift
//  Ratings
//
//  Created by Sphelele Zondo on 2018/07/05.
//  Copyright © 2018 SpheleleZondo. All rights reserved.
//

import Foundation

final class SampleData{
    static func generatePlayersData() -> Array<Player>{
        return [
            Player(name: "Bill Clinton", game: "Tic-Tac-Toe", rating: 4),
            Player(name: "Bob Marley", game: "Spin The Bottle", rating: 5),
            Player(name: "Bill D Williams", game: "Chess", rating: 2),
        ]
    }
}
