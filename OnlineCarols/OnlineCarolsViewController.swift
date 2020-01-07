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
    
    var songs = [OnlineSong]() {
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        MusicAPIClient.fetchCarols(completion: { [weak self] result in
            switch result {
            case .failure(let appError):
                DispatchQueue.main.async {
                    self?.showAlert(title: "Error: Could not read data", message: "\(appError)")
                }
            case .success(let data):
                self?.songs = data
            }
        }
        )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ocDetailViewController = segue.destination as? OCDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("Error: Check prepare for segue")
        }
        ocDetailViewController.song = songs[indexPath.row]
    }
}

extension OnlineCarolsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "onlineCell", for: indexPath) as? OnlineSongCell else {
            fatalError("Error: Couldn't load custom cell SongCell")
        }
        let song = songs[indexPath.row]
        cell.configureCell(song: song)
        return cell
    }
}

