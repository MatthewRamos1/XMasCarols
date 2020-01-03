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
        playSaveSound()

   
    }
    
    func playSaveSound(){
        let path = Bundle.main.path(forResource: "06 LP V1 - Shoulda Left You (jl1A 12-17) (MASTERED DK).wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)

        do {
            //create your audioPlayer in your parent class as a property
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
        default:
            imageView.image = UIImage(systemName: "exclaimationmark.triangle")
        }
    }


}
