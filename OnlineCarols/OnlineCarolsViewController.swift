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
    
    var carols = [OnlineSong]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

}

extension OnlineCarolsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        carols.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onlineCell", for: indexPath)
        
        
    }
}

