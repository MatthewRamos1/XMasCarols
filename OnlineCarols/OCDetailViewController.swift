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
    }
}
