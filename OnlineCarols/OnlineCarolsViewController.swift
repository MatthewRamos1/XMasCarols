//
//  OnlineCarolsViewController.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/5/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class OnlineCarolsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var songs = [OnlineSong]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        songs = MusicAPIClient.fetchCarols(completion: { [weak self] result in
            switch result {
            case .failure(let appError):
                
                
                
            }
        }
    }

}

extension OnlineCarolsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "onlineCell", for: indexPath) as? SongCell else {
            fatalError("Error: Couldn't load custom cell SongCell")
        }
        let song = songs[indexPath.row]
        cell.configureOnlineCell(song: song)
        return cell
    }
}

