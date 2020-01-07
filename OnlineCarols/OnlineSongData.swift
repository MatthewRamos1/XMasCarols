//
//  OnlineSongData.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/5/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

struct OnlineSongData: Decodable {
    let results: [OnlineSong]
}

struct OnlineSong: Decodable {
    let trackName: String?
    let artistName: String
    let artworkUrl30: String?
    let primaryGenreName: String
}
