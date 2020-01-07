//
//  OnlineSongCell.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/6/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class OnlineSongCell: UITableViewCell {

    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    func configureCell(song: OnlineSong) {
        songNameLabel.text = song.trackName
        artistNameLabel.text = song.artistName
        songImage.getImage(with: song.artworkUrl100, completion: { [weak self] (result) in
            switch result {
            case .failure:
                DispatchQueue.main.async {
                    self?.songImage.image = UIImage(systemName: "xmark.icloud" )
                }
            case .success(let image):
                DispatchQueue.main.async {
                    self?.songImage.image = image
                }
                
            }
            
        })
    }
    
    
}
