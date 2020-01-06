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
        case 0:
            songBackground.image = UIImage(named: "0")
        default:
            songBackground.image = UIImage(systemName: "exclaimationmark.triangle")
        }
    }
    
    func configureOnlineCell(song: OnlineSong) {
        songNameLabel.text = song.trackName
    }
}
