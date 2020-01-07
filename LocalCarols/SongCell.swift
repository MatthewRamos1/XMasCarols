//
//  SongCell.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/31/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet weak var songBackground: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    
    
    func configureCell(song: Song) {
        songNameLabel.text = song.name
        switch song.id {
        case 0, 3, 6:
            songBackground.image = UIImage(named: "0")
        case 1, 4, 7:
            songBackground.image = UIImage(named: "1")
        case 2, 5, 8:
            songBackground.image = UIImage(named: "2")
        default:
            songBackground.image = UIImage(systemName: "exclaimationmark.triangle")
        }
    }
}
