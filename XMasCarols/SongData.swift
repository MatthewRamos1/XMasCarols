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
    
    
    static let songs: [Song] = [Song(name: "We Wish You a Merry Christmas", lyrics:
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
    Song(name: "Deck the Halls", lyrics:
        """
        Deck the halls with boughs of holly
        Fa-la-la-la-la, la-la-la-la
        'Tis the season to be jolly
        Fa-la-la-la-la, la-la-la-la
        Don we now our gay apparel
        Fa-la-la, la-la-la, la-la-la
        Troll the ancient Yule-tide carol
        Fa-la-la-la-la, la-la-la-la

        See the blazing Yule before us
        Fa-la-la-la-la, la-la-la-la
        Strike the harp and join the chorus
        Fa-la-la-la-la, la-la-la-la
        Follow me in merry measure
        Fa-la-la, la-la-la, la-la-la
        While I tell of Yule-tide treasure
        Fa-la-la-la-la, la-la-la-la

        Fast away the old year passes
        Fa-la-la-la-la, la-la-la-la
        Hail the new year, lads and lasses
        Fa-la-la-la-la, la-la-la-la
        Sing we joyous, all together
        Fa-la-la, la-la-la, la-la-la
        Heedless of the wind and weather
        Fa-la-la-la-la, la-la-la-la
        """, id: 1),
    Song(name: "Song 3", lyrics: "", id: 2)
    ]
}
