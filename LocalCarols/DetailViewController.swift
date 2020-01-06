//
//  DetailViewController.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/12/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit
import AVFoundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lyricText: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var song: Song?
    var backgroundPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

   
    }
    
    func playBackgroundCarol(songFile: SongFile) {
        guard let path = Bundle.main.path(forResource: songFile.rawValue, ofType: nil) else {
            print("Couldn't play song")
            return
        }
        let url = URL(fileURLWithPath: path)

        do {
            backgroundPlayer = try AVAudioPlayer(contentsOf: url)
            backgroundPlayer.play()
        } catch {
            print("couldn't load the file")
        }
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
        case 1:
            imageView.image = UIImage(named: "1")
        case 2:
            playBackgroundCarol(songFile: SongFile.frosty)
            imageView.image = UIImage(named: "2")
        case 3:
            playBackgroundCarol(songFile: SongFile.holyNight)
            imageView.image = UIImage(named: "0")
        case 4:
            playBackgroundCarol(songFile: SongFile.merryLilXmas)
            imageView.image = UIImage(named: "1")
        case 5:
            playBackgroundCarol(songFile: SongFile.santaClaus)
            imageView.image = UIImage(named: "2")
        default:
            imageView.image = UIImage(systemName: "exclaimationmark.triangle")
        }
    }


}
