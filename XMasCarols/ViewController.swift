//
//  ViewController.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/12/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var songs = [Song]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        songs = Song.songs
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("Error: Couldn't prepare segue")
        }
        detailVC.song = songs[indexPath.row]
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.name
        return cell
    }
}