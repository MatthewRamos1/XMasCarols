//
//  SongData.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 12/12/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

struct Song: Codable {
    let name: String
    let lyrics: String?
    let localID: Int
    
    
    static let songs: [Song] = [Song(name: "We Wish You a Merry Christmas", lyrics: """
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
""", localID: 0),
    Song(name: "Deck the Halls", lyrics: """
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
        """, localID: 1),
    Song(name: "Frosty the Snowman", lyrics: """
Frosty the snowman was a jolly happy soul
With a corncob pipe and a button nose
And two eyes made out of coal
Frosty the snowman is a fairy tale, they say
He was made of snow but the children know
How he came to life one day
There must have been some magic in
That old silk hat they found
For when they placed it on his head
He began to dance around
Oh, Frosty the snowman
Was alive as he could be
And the children say he could laugh and play
Just the same as you and me

Thumpety thump thump
Thumpety thump thump
Look at Frosty go
Thumpety thump thump
Thumpety thump thump
Over the hills of snow

Ooh Frosty the snowman
Knew the sun was hot that day
So he said, "Let's run and we'll have some fun
Now before I melt away."
Down to the village
With a broomstick in his hand
Running here and there all around the square
Saying "catch me if you can!"
He led them down the streets of town
Right to the traffic cop
And he only paused a moment when
He heard him holler "Stop!"
Oh, Frosty the snowman
Had to hurry on his way
But he waved goodbye, saying
"Don't you cry, I'll be back again someday."

Thumpety thump thump
Thumpety thump thump
Look at Frosty go
Thumpety thump thump
Thumpety thump thump
Over the hills of snow!
""", localID: 2),
    Song(name: "O Holy Night", lyrics: """
O Holy night! The stars are brightly shining
It is the night of our dear Savior's birth
Long lay the world in sin and error pining
'Til He appears and the soul felt its worth
A thrill of hope the weary world rejoices
For yonder breaks a new and glorious morn
Fall on your knees; O hear the Angel voices!
O night divine, O night when Christ was born
O night, O Holy night, O night divine!

Led by the light of Faith serenely beaming
With glowing hearts by His cradle we stand
So led by light of a star sweetly gleaming
Here come the Wise Men from Orient land
The King of kings lay thus in lowly manger
In all our trials born to be our friend
He knows our need, to our weakness is no stranger
Behold your King; before Him lowly bend
Behold your King; before Him lowly bend

Truly He taught us to love one another;
His law is love and His Gospel is Peace
Chains shall He break, for the slave is our brother
And in His name, all oppression shall cease
Sweet hymns of joy in grateful chorus raise we
Let all within us Praise His Holy name
Christ is the Lord; O praise His name forever!
His power and glory evermore proclaim
His power and glory evermore proclaim, id: 3)
""", localID: 3),
    Song(name: "Have Yourself a Merry Little Christmas", lyrics: """
Have yourself a merry little Christmas
Let your heart be light
Next year all our troubles will be out of sight

Have yourself a merry little Christmas
Make the Yuletide gay
Next year all our troubles will be miles away

Once again as in olden days
Happy golden days of yore
Faithful friends who are dear to us
Will be near to us, once more

Someday soon we all will be together
If the fates allow
Until then we'll have to muddle through somehow

So have yourself a merry little Christmas now
""", localID: 4),
    Song(name: "Santa Claus is Coming to Town", lyrics: """
You better watch out
You better not cry
You better not pout
I'm telling you why, Santa Claus is coming to town
He's making a list
He's checking it twice
He's going to find out
Who's naughty and nice, Santa Claus is coming to town

He sees you when you're sleeping
He knows when you're awake
He knows when you've been bad or good
So be good for goodness sake

You better watch out
You better not cry
You better not pout
I'm telling you why, Santa Claus is coming to town
You better watch out
You better not cry
You better not pout
I'm telling you why, Santa Claus is coming to town
He's making a list
He's checking it twice
He's going to find out
Who's naughty and nice, Santa Claus is coming to town

He sees you when you're sleeping
He knows when you're awake
He knows when you've been bad or good
So be good for goodness sake

You better watch out
You better not cry
You better not pout
I'm telling you why, Santa Claus is coming to town

He sees you when you're sleeping
He knows when you're awake
He knows when you've been bad or good
So be good for goodness sake

You better watch out
You better not cry
You better not pout
I'm telling you why, Santa Claus is coming to town
He's making a list
And checking it twice
He's going to find out
Who's naughty and nice, Santa Claus is coming
Santa Claus is coming, Santa Claus is coming to town
Santa Claus is coming to town
Santa Claus is coming to town
Santa Claus is coming to town
""", localID: 5),
    Song(name: "Little Drummer Bout", lyrics: """
Come thy told me
Pa rum pum pum-pum
A newborn King to see
Pa rum pum pum-pum
Our finest gifts we bring
Pa rum pum pum-pum
To lay before the king
Pa rum pum pum-pum
Rum pum pum-pum
Rum pum pum-pum
So to honor Him
Pa rum pum pum-pum
When we come

Little baby
Pa rum pum pum-pum
I am a poor boy too
Pa rum pum pum-pum
I have no gift to bring
Pa rum pum pum-pum
That's fit to give our King
Pa rum pum pum-pum
Rum pum pum-pum
Rum pum pum-pum
Shall I play for you
Pa rum pum pum-pum
On my drum

Mary nodded
Pa rum pum pum-pum
The ox and lamb kept time
Pa rum pum pum-pum
I played my drum for Him
Pa rum pum pum-pum
I played my best for Him
Pa rum pum pum-pum
Rum pum pum-pum
Rum pum pum-pum
Then He smiled at me
Pa rum pum pum-pum
Me and my drum
""", localID: 6),
    Song(name: "Jingle Bells", lyrics: """
Dashing through the snow
In a one-horse open sleigh
O'er the fields we go
Laughing all the way
Bells on bobtails ring
Making spirits bright
What fun it is to ride and sing
A sleighing song tonight

Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh, hey
Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh

A day or two ago
I thought I'd take a ride
And soon, Miss Fanny Bright
Was seated by my side
The horse was lean and lank
Misfortune seemed his lot
He got into a drifted bank
And then we got upsot

Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh, hey
Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh

A day or two ago
The story I must tell
I went out on the snow
And on my back I fell
A gent was riding by
In a one-horse open sleigh
He laughed as there I sprawling lie
But quickly drove away

Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh, hey
Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh

Now the ground is white
Go it while you're young
Take the girls tonight
And sing this sleighing song
Just get a bobtailed bay
Two forty as his speed
Hitch him to an open sleigh
And crack, you'll take the lead

Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh, hey
Jingle bells, jingle bells
Jingle all the way
Oh, what fun it is to ride
In a one-horse open sleigh
""", localID: 7),
    Song(name: "Jingle Bell Rock", lyrics: """
Jingle bell, jingle bell, jingle bell rock
Jingle bells swing and jingle bells ring
Snowin' and blowin' up bushels of fun
Now, the jingle hop has begun

Jingle bell, jingle bell, jingle bell rock
Jingle bells chime in jingle bell time
Dancin' and prancin' in Jingle Bell Square
In the frosty air

What a bright time, it's the right time
To rock the night away
Jingle bell time is a swell time
To go glidin' in a one-horse sleigh

Giddy-up jingle horse, pick up your feet
Jingle around the clock
Mix and a-mingle in the jinglin' feet
That's the jingle bell rock

Jingle bell, jingle bell, jingle bell rock
Jingle bells chime in jingle bell time
Dancin' and prancin' in Jingle Bell Square
In the frosty air

What a bright time, it's the right time
To rock the night away
Jingle bell time is a swell time
To go glidin' in a one-horse sleigh

Giddy-up jingle horse, pick up your feet
Jingle around the clock
Mix and a-mingle in the jinglin' feet
That's the jingle bell
That's the jingle bell
That's the jingle bell rock
""", localID: 8),
    ]
}
