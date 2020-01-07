//
//  OCDetailViewController.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/5/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class OCDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var albumNameLabel: UILabel!
    
    var song: OnlineSong?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let detailVCSong = song else {
            fatalError("Error: Couldn't pull segued OnlineSong, check prepare for segue")
        }
        songNameLabel.text = detailVCSong.trackName
        artistNameLabel.text = detailVCSong.artistName
        albumNameLabel.text = detailVCSong.collectionName
        imageView.getImage(with: detailVCSong.artworkUrl100, completion: { [weak self] (result) in
            switch result {
            case .failure:
                DispatchQueue.main.async {
                    self?.imageView.image = UIImage(systemName: "xmark.icloud")
                }
            case .success(let image):
                DispatchQueue.main.async {
                    self?.imageView.image = image
                }
            }
        })
        
    }
}
