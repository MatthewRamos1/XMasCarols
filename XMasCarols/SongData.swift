//
//  SongData.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/12/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

struct Song {
    let name: String
    let lyrics: String
    let id: Int
    
    
    let songs: [Song] = [Song(name: "We Wish You a Merry Christmas", lyrics:
        """
We wish you a Merry Christmas
We wish you a Merry Christmas
We wish you a Merry Christmas and a Happy New Year

Good tidings we bring
To you and your kin
We wish you a Merry Christmas
And a Happy new Year

Now bring us some figgy pudding
Now bring us some figgy pudding
Now bring us some figgy pudding
And a cup of good cheer

Good tidings we bring
To you and your kin
We wish you a Merry Christmas
And a Happy new Year

We won't go until we get some
We won't go until we get some
We won't go until we get some
So bring some out here

Good tidings we bring
To you and your kin
We wish you a Merry Christmas
And a Happy new Year

We wish you a Merry Christmas
We wish you a Merry Christmas
We wish you a Merry Christmas and a Happy New Year!
""", id: 0),
    Song(name: "Deck the Halls", lyrics: <#T##String#>, id: <#T##Int#>)
    
}
