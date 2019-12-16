//
//  DetailViewController.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/12/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lyricText: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var song: Song?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

   
    }
    
    func updateUI(){
        guard let detailVCSong = song else {
            fatalError("Error: Couldn't pull Song, check prepare for segue")
        }
        lyricText.text = detailVCSong.lyrics
        navigationItem.title = detailVCSong.name
        switch detailVCSong.id {
        case 0:
            imageView.image = UIImage(named: "0")
        default:
            return
        }
    }


}
